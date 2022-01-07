
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
 int ILI9341_DISCTRL ;
 int ILI9341_DTCTRLA ;
 int ILI9341_DTCTRLB ;
 int ILI9341_EN3GAM ;
 int ILI9341_ETMOD ;
 int ILI9341_FRMCTR1 ;
 int ILI9341_MADCTL_BGR ;
 int ILI9341_MADCTL_MV ;
 int ILI9341_MADCTL_MX ;
 int ILI9341_MADCTL_MY ;
 int ILI9341_NGAMCTRL ;
 int ILI9341_PGAMCTRL ;
 int ILI9341_PUMPCTRL ;
 int ILI9341_PWCTRL1 ;
 int ILI9341_PWCTRL2 ;
 int ILI9341_PWCTRLA ;
 int ILI9341_PWCTRLB ;
 int ILI9341_PWRSEQ ;
 int ILI9341_VMCTRL1 ;
 int ILI9341_VMCTRL2 ;
 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int MIPI_DCS_PIXEL_FMT_16BIT ;
 int MIPI_DCS_SET_ADDRESS_MODE ;
 int MIPI_DCS_SET_DISPLAY_OFF ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int MIPI_DCS_SET_GAMMA_CURVE ;
 int MIPI_DCS_SET_PIXEL_FORMAT ;
 int drm_dev_enter (int ,int*) ;
 int drm_dev_exit (int) ;
 struct mipi_dbi_dev* drm_to_mipi_dbi_dev (int ) ;
 int mipi_dbi_command (struct mipi_dbi*,int ,...) ;
 int mipi_dbi_enable_flush (struct mipi_dbi_dev*,struct drm_crtc_state*,struct drm_plane_state*) ;
 int mipi_dbi_poweron_conditional_reset (struct mipi_dbi_dev*) ;
 int msleep (int) ;

__attribute__((used)) static void mi0283qt_enable(struct drm_simple_display_pipe *pipe,
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

 mipi_dbi_command(dbi, MIPI_DCS_SET_DISPLAY_OFF);

 mipi_dbi_command(dbi, ILI9341_PWCTRLB, 0x00, 0x83, 0x30);
 mipi_dbi_command(dbi, ILI9341_PWRSEQ, 0x64, 0x03, 0x12, 0x81);
 mipi_dbi_command(dbi, ILI9341_DTCTRLA, 0x85, 0x01, 0x79);
 mipi_dbi_command(dbi, ILI9341_PWCTRLA, 0x39, 0x2c, 0x00, 0x34, 0x02);
 mipi_dbi_command(dbi, ILI9341_PUMPCTRL, 0x20);
 mipi_dbi_command(dbi, ILI9341_DTCTRLB, 0x00, 0x00);


 mipi_dbi_command(dbi, ILI9341_PWCTRL1, 0x26);
 mipi_dbi_command(dbi, ILI9341_PWCTRL2, 0x11);

 mipi_dbi_command(dbi, ILI9341_VMCTRL1, 0x35, 0x3e);
 mipi_dbi_command(dbi, ILI9341_VMCTRL2, 0xbe);


 mipi_dbi_command(dbi, MIPI_DCS_SET_PIXEL_FORMAT, MIPI_DCS_PIXEL_FMT_16BIT);


 mipi_dbi_command(dbi, ILI9341_FRMCTR1, 0x00, 0x1b);


 mipi_dbi_command(dbi, ILI9341_EN3GAM, 0x08);
 mipi_dbi_command(dbi, MIPI_DCS_SET_GAMMA_CURVE, 0x01);
 mipi_dbi_command(dbi, ILI9341_PGAMCTRL,
         0x1f, 0x1a, 0x18, 0x0a, 0x0f, 0x06, 0x45, 0x87,
         0x32, 0x0a, 0x07, 0x02, 0x07, 0x05, 0x00);
 mipi_dbi_command(dbi, ILI9341_NGAMCTRL,
         0x00, 0x25, 0x27, 0x05, 0x10, 0x09, 0x3a, 0x78,
         0x4d, 0x05, 0x18, 0x0d, 0x38, 0x3a, 0x1f);


 mipi_dbi_command(dbi, ILI9341_ETMOD, 0x07);


 mipi_dbi_command(dbi, ILI9341_DISCTRL, 0x0a, 0x82, 0x27, 0x00);
 mipi_dbi_command(dbi, MIPI_DCS_EXIT_SLEEP_MODE);
 msleep(100);

 mipi_dbi_command(dbi, MIPI_DCS_SET_DISPLAY_ON);
 msleep(100);

out_enable:






 switch (dbidev->rotation) {
 default:
  addr_mode = ILI9341_MADCTL_MV | ILI9341_MADCTL_MY |
       ILI9341_MADCTL_MX;
  break;
 case 90:
  addr_mode = ILI9341_MADCTL_MY;
  break;
 case 180:
  addr_mode = ILI9341_MADCTL_MV;
  break;
 case 270:
  addr_mode = ILI9341_MADCTL_MX;
  break;
 }
 addr_mode |= ILI9341_MADCTL_BGR;
 mipi_dbi_command(dbi, MIPI_DCS_SET_ADDRESS_MODE, addr_mode);
 mipi_dbi_enable_flush(dbidev, crtc_state, plane_state);
out_exit:
 drm_dev_exit(idx);
}
