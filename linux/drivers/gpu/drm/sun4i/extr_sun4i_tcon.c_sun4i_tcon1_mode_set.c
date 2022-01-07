
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sun4i_tcon {int regs; int sclk1; TYPE_1__* quirks; } ;
struct drm_display_mode {int crtc_clock; int flags; unsigned int crtc_htotal; unsigned int crtc_hsync_start; unsigned int htotal; unsigned int crtc_vtotal; unsigned int crtc_vsync_start; unsigned int vtotal; unsigned int crtc_hsync_end; unsigned int crtc_vsync_end; int crtc_vdisplay; int crtc_hdisplay; } ;
struct TYPE_2__ {int has_channel_1; } ;


 int DRM_DEBUG_DRIVER (char*,unsigned int,unsigned int) ;
 int DRM_MODE_FLAG_INTERLACE ;
 int SUN4I_TCON1_BASIC0_REG ;
 int SUN4I_TCON1_BASIC0_X (int ) ;
 int SUN4I_TCON1_BASIC0_Y (int ) ;
 int SUN4I_TCON1_BASIC1_REG ;
 int SUN4I_TCON1_BASIC1_X (int ) ;
 int SUN4I_TCON1_BASIC1_Y (int ) ;
 int SUN4I_TCON1_BASIC2_REG ;
 int SUN4I_TCON1_BASIC2_X (int ) ;
 int SUN4I_TCON1_BASIC2_Y (int ) ;
 int SUN4I_TCON1_BASIC3_H_BACKPORCH (unsigned int) ;
 int SUN4I_TCON1_BASIC3_H_TOTAL (unsigned int) ;
 int SUN4I_TCON1_BASIC3_REG ;
 int SUN4I_TCON1_BASIC4_REG ;
 int SUN4I_TCON1_BASIC4_V_BACKPORCH (unsigned int) ;
 int SUN4I_TCON1_BASIC4_V_TOTAL (unsigned int) ;
 int SUN4I_TCON1_BASIC5_H_SYNC (unsigned int) ;
 int SUN4I_TCON1_BASIC5_REG ;
 int SUN4I_TCON1_BASIC5_V_SYNC (unsigned int) ;
 scalar_t__ SUN4I_TCON1_CTL_CLK_DELAY (int ) ;
 scalar_t__ SUN4I_TCON1_CTL_CLK_DELAY_MASK ;
 scalar_t__ SUN4I_TCON1_CTL_INTERLACE_ENABLE ;
 int SUN4I_TCON1_CTL_REG ;
 scalar_t__ SUN4I_TCON_GCTL_IOMAP_MASK ;
 scalar_t__ SUN4I_TCON_GCTL_IOMAP_TCON1 ;
 int SUN4I_TCON_GCTL_REG ;
 int WARN_ON (int) ;
 int clk_set_rate (int ,int) ;
 int regmap_update_bits (int ,int ,scalar_t__,scalar_t__) ;
 int regmap_write (int ,int ,int) ;
 int sun4i_tcon_get_clk_delay (struct drm_display_mode const*,int) ;

__attribute__((used)) static void sun4i_tcon1_mode_set(struct sun4i_tcon *tcon,
     const struct drm_display_mode *mode)
{
 unsigned int bp, hsync, vsync, vtotal;
 u8 clk_delay;
 u32 val;

 WARN_ON(!tcon->quirks->has_channel_1);


 clk_set_rate(tcon->sclk1, mode->crtc_clock * 1000);


 clk_delay = sun4i_tcon_get_clk_delay(mode, 1);
 regmap_update_bits(tcon->regs, SUN4I_TCON1_CTL_REG,
      SUN4I_TCON1_CTL_CLK_DELAY_MASK,
      SUN4I_TCON1_CTL_CLK_DELAY(clk_delay));


 if (mode->flags & DRM_MODE_FLAG_INTERLACE)
  val = SUN4I_TCON1_CTL_INTERLACE_ENABLE;
 else
  val = 0;
 regmap_update_bits(tcon->regs, SUN4I_TCON1_CTL_REG,
      SUN4I_TCON1_CTL_INTERLACE_ENABLE,
      val);


 regmap_write(tcon->regs, SUN4I_TCON1_BASIC0_REG,
       SUN4I_TCON1_BASIC0_X(mode->crtc_hdisplay) |
       SUN4I_TCON1_BASIC0_Y(mode->crtc_vdisplay));


 regmap_write(tcon->regs, SUN4I_TCON1_BASIC1_REG,
       SUN4I_TCON1_BASIC1_X(mode->crtc_hdisplay) |
       SUN4I_TCON1_BASIC1_Y(mode->crtc_vdisplay));


 regmap_write(tcon->regs, SUN4I_TCON1_BASIC2_REG,
       SUN4I_TCON1_BASIC2_X(mode->crtc_hdisplay) |
       SUN4I_TCON1_BASIC2_Y(mode->crtc_vdisplay));


 bp = mode->crtc_htotal - mode->crtc_hsync_start;
 DRM_DEBUG_DRIVER("Setting horizontal total %d, backporch %d\n",
    mode->htotal, bp);
 regmap_write(tcon->regs, SUN4I_TCON1_BASIC3_REG,
       SUN4I_TCON1_BASIC3_H_TOTAL(mode->crtc_htotal) |
       SUN4I_TCON1_BASIC3_H_BACKPORCH(bp));

 bp = mode->crtc_vtotal - mode->crtc_vsync_start;
 DRM_DEBUG_DRIVER("Setting vertical total %d, backporch %d\n",
    mode->crtc_vtotal, bp);
 vtotal = mode->vtotal;
 if (!(mode->flags & DRM_MODE_FLAG_INTERLACE))
  vtotal = vtotal * 2;


 regmap_write(tcon->regs, SUN4I_TCON1_BASIC4_REG,
       SUN4I_TCON1_BASIC4_V_TOTAL(vtotal) |
       SUN4I_TCON1_BASIC4_V_BACKPORCH(bp));


 hsync = mode->crtc_hsync_end - mode->crtc_hsync_start;
 vsync = mode->crtc_vsync_end - mode->crtc_vsync_start;
 DRM_DEBUG_DRIVER("Setting HSYNC %d, VSYNC %d\n", hsync, vsync);
 regmap_write(tcon->regs, SUN4I_TCON1_BASIC5_REG,
       SUN4I_TCON1_BASIC5_V_SYNC(vsync) |
       SUN4I_TCON1_BASIC5_H_SYNC(hsync));


 regmap_update_bits(tcon->regs, SUN4I_TCON_GCTL_REG,
      SUN4I_TCON_GCTL_IOMAP_MASK,
      SUN4I_TCON_GCTL_IOMAP_TCON1);
}
