
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_tcon {int regs; int dclk; } ;
struct drm_display_mode {int crtc_clock; int crtc_vdisplay; int crtc_hdisplay; } ;


 int SUN4I_TCON0_BASIC0_REG ;
 int SUN4I_TCON0_BASIC0_X (int ) ;
 int SUN4I_TCON0_BASIC0_Y (int ) ;
 int clk_set_rate (int ,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void sun4i_tcon0_mode_set_common(struct sun4i_tcon *tcon,
     const struct drm_display_mode *mode)
{

 clk_set_rate(tcon->dclk, mode->crtc_clock * 1000);


 regmap_write(tcon->regs, SUN4I_TCON0_BASIC0_REG,
       SUN4I_TCON0_BASIC0_X(mode->crtc_hdisplay) |
       SUN4I_TCON0_BASIC0_Y(mode->crtc_vdisplay));
}
