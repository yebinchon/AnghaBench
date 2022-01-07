
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sun6i_dsi {int regs; struct mipi_dsi_device* device; } ;
struct mipi_dsi_device {int mode_flags; } ;
struct drm_display_mode {int htotal; int hdisplay; int clock; } ;


 int DSI_INST_ID_DLY ;
 int DSI_INST_ID_LP11 ;
 int MIPI_DSI_MODE_VIDEO_BURST ;
 int SUN6I_DSI_INST_LOOP_NUM_N0 (int) ;
 int SUN6I_DSI_INST_LOOP_NUM_N1 (int) ;
 int SUN6I_DSI_INST_LOOP_NUM_REG (int) ;
 int SUN6I_DSI_INST_LOOP_SEL_REG ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void sun6i_dsi_setup_inst_loop(struct sun6i_dsi *dsi,
          struct drm_display_mode *mode)
{
 struct mipi_dsi_device *device = dsi->device;
 u16 delay = 50 - 1;

 if (device->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
  u32 hsync_porch = (mode->htotal - mode->hdisplay) * 150;

  delay = (hsync_porch / ((mode->clock / 1000) * 8));
  delay -= 50;
 }

 regmap_write(dsi->regs, SUN6I_DSI_INST_LOOP_SEL_REG,
       2 << (4 * DSI_INST_ID_LP11) |
       3 << (4 * DSI_INST_ID_DLY));

 regmap_write(dsi->regs, SUN6I_DSI_INST_LOOP_NUM_REG(0),
       SUN6I_DSI_INST_LOOP_NUM_N0(50 - 1) |
       SUN6I_DSI_INST_LOOP_NUM_N1(delay));
 regmap_write(dsi->regs, SUN6I_DSI_INST_LOOP_NUM_REG(1),
       SUN6I_DSI_INST_LOOP_NUM_N0(50 - 1) |
       SUN6I_DSI_INST_LOOP_NUM_N1(delay));
}
