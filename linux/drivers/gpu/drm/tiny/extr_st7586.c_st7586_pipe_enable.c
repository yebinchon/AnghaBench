
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mipi_dbi {int dummy; } ;
struct mipi_dbi_dev {int rotation; int enabled; struct mipi_dbi dbi; } ;
struct TYPE_2__ {int dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;
struct drm_rect {int y2; int y1; int x2; int x1; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_framebuffer {int height; int width; } ;
struct drm_crtc_state {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 int MIPI_DCS_EXIT_INVERT_MODE ;
 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int MIPI_DCS_SET_ADDRESS_MODE ;
 int MIPI_DCS_SET_DISPLAY_OFF ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int MIPI_DCS_SET_PARTIAL_AREA ;
 int ST7586_AUTO_READ_CTRL ;
 int ST7586_DISP_CTRL_MX ;
 int ST7586_DISP_CTRL_MY ;
 int ST7586_DISP_MODE_GRAY ;
 int ST7586_ENABLE_ANALOG ;
 int ST7586_ENABLE_DDRAM ;
 int ST7586_OTP_CTRL_OUT ;
 int ST7586_OTP_READ ;
 int ST7586_OTP_RW_CTRL ;
 int ST7586_SET_BIAS_SYSTEM ;
 int ST7586_SET_BOOST_LEVEL ;
 int ST7586_SET_DISP_DUTY ;
 int ST7586_SET_NLINE_INV ;
 int ST7586_SET_PART_DISP ;
 int ST7586_SET_VOP ;
 int ST7586_SET_VOP_OFFSET ;
 int drm_dev_enter (int ,int*) ;
 int drm_dev_exit (int) ;
 struct mipi_dbi_dev* drm_to_mipi_dbi_dev (int ) ;
 int mipi_dbi_command (struct mipi_dbi*,int ,...) ;
 int mipi_dbi_poweron_reset (struct mipi_dbi_dev*) ;
 int msleep (int) ;
 int st7586_fb_dirty (struct drm_framebuffer*,struct drm_rect*) ;

__attribute__((used)) static void st7586_pipe_enable(struct drm_simple_display_pipe *pipe,
          struct drm_crtc_state *crtc_state,
          struct drm_plane_state *plane_state)
{
 struct mipi_dbi_dev *dbidev = drm_to_mipi_dbi_dev(pipe->crtc.dev);
 struct drm_framebuffer *fb = plane_state->fb;
 struct mipi_dbi *dbi = &dbidev->dbi;
 struct drm_rect rect = {
  .x1 = 0,
  .x2 = fb->width,
  .y1 = 0,
  .y2 = fb->height,
 };
 int idx, ret;
 u8 addr_mode;

 if (!drm_dev_enter(pipe->crtc.dev, &idx))
  return;

 DRM_DEBUG_KMS("\n");

 ret = mipi_dbi_poweron_reset(dbidev);
 if (ret)
  goto out_exit;

 mipi_dbi_command(dbi, ST7586_AUTO_READ_CTRL, 0x9f);
 mipi_dbi_command(dbi, ST7586_OTP_RW_CTRL, 0x00);

 msleep(10);

 mipi_dbi_command(dbi, ST7586_OTP_READ);

 msleep(20);

 mipi_dbi_command(dbi, ST7586_OTP_CTRL_OUT);
 mipi_dbi_command(dbi, MIPI_DCS_EXIT_SLEEP_MODE);
 mipi_dbi_command(dbi, MIPI_DCS_SET_DISPLAY_OFF);

 msleep(50);

 mipi_dbi_command(dbi, ST7586_SET_VOP_OFFSET, 0x00);
 mipi_dbi_command(dbi, ST7586_SET_VOP, 0xe3, 0x00);
 mipi_dbi_command(dbi, ST7586_SET_BIAS_SYSTEM, 0x02);
 mipi_dbi_command(dbi, ST7586_SET_BOOST_LEVEL, 0x04);
 mipi_dbi_command(dbi, ST7586_ENABLE_ANALOG, 0x1d);
 mipi_dbi_command(dbi, ST7586_SET_NLINE_INV, 0x00);
 mipi_dbi_command(dbi, ST7586_DISP_MODE_GRAY);
 mipi_dbi_command(dbi, ST7586_ENABLE_DDRAM, 0x02);

 switch (dbidev->rotation) {
 default:
  addr_mode = 0x00;
  break;
 case 90:
  addr_mode = ST7586_DISP_CTRL_MY;
  break;
 case 180:
  addr_mode = ST7586_DISP_CTRL_MX | ST7586_DISP_CTRL_MY;
  break;
 case 270:
  addr_mode = ST7586_DISP_CTRL_MX;
  break;
 }
 mipi_dbi_command(dbi, MIPI_DCS_SET_ADDRESS_MODE, addr_mode);

 mipi_dbi_command(dbi, ST7586_SET_DISP_DUTY, 0x7f);
 mipi_dbi_command(dbi, ST7586_SET_PART_DISP, 0xa0);
 mipi_dbi_command(dbi, MIPI_DCS_SET_PARTIAL_AREA, 0x00, 0x00, 0x00, 0x77);
 mipi_dbi_command(dbi, MIPI_DCS_EXIT_INVERT_MODE);

 msleep(100);

 dbidev->enabled = 1;
 st7586_fb_dirty(fb, &rect);

 mipi_dbi_command(dbi, MIPI_DCS_SET_DISPLAY_ON);
out_exit:
 drm_dev_exit(idx);
}
