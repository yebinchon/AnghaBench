
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sun4i_tcon {int regs; } ;
struct drm_encoder {int dummy; } ;


 int SUN4I_TCON0_LVDS_ANA0_REG ;
 int SUN4I_TCON0_LVDS_IF_EN ;
 int SUN4I_TCON0_LVDS_IF_REG ;
 int SUN6I_TCON0_LVDS_ANA0_C (int) ;
 int SUN6I_TCON0_LVDS_ANA0_EN_DRVC ;
 int SUN6I_TCON0_LVDS_ANA0_EN_DRVD (int) ;
 int SUN6I_TCON0_LVDS_ANA0_EN_LDO ;
 int SUN6I_TCON0_LVDS_ANA0_EN_MB ;
 int SUN6I_TCON0_LVDS_ANA0_PD (int) ;
 int SUN6I_TCON0_LVDS_ANA0_V (int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 int sun4i_tcon_get_pixel_depth (struct drm_encoder const*) ;
 int udelay (int) ;

__attribute__((used)) static void sun4i_tcon_lvds_set_status(struct sun4i_tcon *tcon,
           const struct drm_encoder *encoder,
           bool enabled)
{
 if (enabled) {
  u8 val;

  regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_IF_REG,
       SUN4I_TCON0_LVDS_IF_EN,
       SUN4I_TCON0_LVDS_IF_EN);






  regmap_write(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
        SUN6I_TCON0_LVDS_ANA0_C(2) |
        SUN6I_TCON0_LVDS_ANA0_V(3) |
        SUN6I_TCON0_LVDS_ANA0_PD(2) |
        SUN6I_TCON0_LVDS_ANA0_EN_LDO);
  udelay(2);

  regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
       SUN6I_TCON0_LVDS_ANA0_EN_MB,
       SUN6I_TCON0_LVDS_ANA0_EN_MB);
  udelay(2);

  regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
       SUN6I_TCON0_LVDS_ANA0_EN_DRVC,
       SUN6I_TCON0_LVDS_ANA0_EN_DRVC);

  if (sun4i_tcon_get_pixel_depth(encoder) == 18)
   val = 7;
  else
   val = 0xf;

  regmap_write_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
      SUN6I_TCON0_LVDS_ANA0_EN_DRVD(0xf),
      SUN6I_TCON0_LVDS_ANA0_EN_DRVD(val));
 } else {
  regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_IF_REG,
       SUN4I_TCON0_LVDS_IF_EN, 0);
 }
}
