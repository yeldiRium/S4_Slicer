{
  pkgs,
  ...
}:
{
  packages = with pkgs; [
    python312Packages.jupyter
    xorg.libX11
    xorg.xvfb
    udev
    libGL
    libxrender
  ];
  languages.python = {
    enable = true;
    # Python 3.12 is necessary since the dependency open3d does not exist for
    # newer python versions.
    package = pkgs.python312;
    venv.enable = true;
  };
}
