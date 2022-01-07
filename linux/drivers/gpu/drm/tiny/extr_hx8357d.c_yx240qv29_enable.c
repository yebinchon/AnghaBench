
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mipi_dbi {int dummy; } ;
struct mipi_dbi_dev {int rotation; struct mipi_dbi dbi; } ;
struct TYPE_2__ {int dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;
struct drm_plane_state {int dummy; } ;
struct drm_crtc_state {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 int HX8357D_MADCTL_MV ;
 int HX8357D_MADCTL_MX ;
 int HX8357D_MADCTL_MY ;
 int HX8357D_SETCOM ;
 int HX8357D_SETCYC ;
 int HX8357D_SETEXTC ;
 int HX8357D_SETGAMMA ;
 int HX8357D_SETOSC ;
 int HX8357D_SETPANEL ;
 int HX8357D_SETPOWER ;
 int HX8357D_SETRGB ;
 int HX8357D_SETSTBA ;
 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int MIPI_DCS_PIXEL_FMT_16BIT ;
 int MIPI_DCS_SET_ADDRESS_MODE ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int MIPI_DCS_SET_PIXEL_FORMAT ;
 int MIPI_DCS_SET_TEAR_ON ;
 int MIPI_DCS_SET_TEAR_SCANLINE ;
 int drm_dev_enter (int ,int*) ;
 int drm_dev_exit (int) ;
 struct mipi_dbi_dev* drm_to_mipi_dbi_dev (int ) ;
 int mipi_dbi_command (struct mipi_dbi*,int ,...) ;
 int mipi_dbi_enable_flush (struct mipi_dbi_dev*,struct drm_crtc_state*,struct drm_plane_state*) ;
 int mipi_dbi_poweron_conditional_reset (struct mipi_dbi_dev*) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void yx240qv29_enable(struct drm_simple_display_pipe *pipe,
        struct drm_crtc_state *crtc_state,
        struct drm_plane_state *plane_state)
{
 struct mipi_dbi_dev *dbidev = drm_to_mipi_dbi_dev(pipe->crtc.dev);
 struct mipi_dbi *dbi = &dbidev->dbi;
 u8 addr_mode;
 int ret, idx;

 if (!drm_dev_enter(pipe->crtc.dev, &idx))
  return;

 DRM_DEBUG_KMS("\n");

 ret = mipi_dbi_poweron_conditional_reset(dbidev);
 if (ret < 0)
  goto out_exit;
 if (ret == 1)
  goto out_enable;


 mipi_dbi_command(dbi, HX8357D_SETEXTC, 0xFF, 0x83, 0x57);
 msleep(150);


 mipi_dbi_command(dbi, HX8357D_SETRGB, 0x00, 0x00, 0x06, 0x06);


 mipi_dbi_command(dbi, HX8357D_SETCOM, 0x25);


 mipi_dbi_command(dbi, HX8357D_SETOSC, 0x68);


 mipi_dbi_command(dbi, HX8357D_SETPANEL, 0x05);

 mipi_dbi_command(dbi, HX8357D_SETPOWER,
    0x00,
    0x15,
    0x1C,
    0x1C,
    0x83,
    0xAA);

 mipi_dbi_command(dbi, HX8357D_SETSTBA,
    0x50,
    0x50,
    0x01,
    0x3C,
    0x1E,
    0x08);

 mipi_dbi_command(dbi, HX8357D_SETCYC,
    0x02,
    0x40,
    0x00,
    0x2A,
    0x2A,
    0x0D,
    0x78);

 mipi_dbi_command(dbi, HX8357D_SETGAMMA,
    0x02,
    0x0A,
    0x11,
    0x1d,
    0x23,
    0x35,
    0x41,
    0x4b,
    0x4b,
    0x42,
    0x3A,
    0x27,
    0x1B,
    0x08,
    0x09,
    0x03,
    0x02,
    0x0A,
    0x11,
    0x1d,
    0x23,
    0x35,
    0x41,
    0x4b,
    0x4b,
    0x42,
    0x3A,
    0x27,
    0x1B,
    0x08,
    0x09,
    0x03,
    0x00,
    0x01);


 mipi_dbi_command(dbi, MIPI_DCS_SET_PIXEL_FORMAT,
    MIPI_DCS_PIXEL_FMT_16BIT);


 mipi_dbi_command(dbi, MIPI_DCS_SET_TEAR_ON, 0x00);


 mipi_dbi_command(dbi, MIPI_DCS_SET_TEAR_SCANLINE, 0x00, 0x02);


 mipi_dbi_command(dbi, MIPI_DCS_EXIT_SLEEP_MODE);
 msleep(150);


 mipi_dbi_command(dbi, MIPI_DCS_SET_DISPLAY_ON);
 usleep_range(5000, 7000);

out_enable:
 switch (dbidev->rotation) {
 default:
  addr_mode = HX8357D_MADCTL_MX | HX8357D_MADCTL_MY;
  break;
 case 90:
  addr_mode = HX8357D_MADCTL_MV | HX8357D_MADCTL_MY;
  break;
 case 180:
  addr_mode = 0;
  break;
 case 270:
  addr_mode = HX8357D_MADCTL_MV | HX8357D_MADCTL_MX;
  break;
 }
 mipi_dbi_command(dbi, MIPI_DCS_SET_ADDRESS_MODE, addr_mode);
 mipi_dbi_enable_flush(dbidev, crtc_state, plane_state);
out_exit:
 drm_dev_exit(idx);
}
