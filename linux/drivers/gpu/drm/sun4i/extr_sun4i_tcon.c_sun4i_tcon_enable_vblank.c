
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_tcon {int regs; } ;


 int DRM_DEBUG_DRIVER (char*,char*) ;
 int SUN4I_TCON_GINT0_REG ;
 int SUN4I_TCON_GINT0_TCON0_TRI_FINISH_ENABLE ;
 int SUN4I_TCON_GINT0_VBLANK_ENABLE (int) ;
 int regmap_update_bits (int ,int ,int,int) ;

void sun4i_tcon_enable_vblank(struct sun4i_tcon *tcon, bool enable)
{
 u32 mask, val = 0;

 DRM_DEBUG_DRIVER("%sabling VBLANK interrupt\n", enable ? "En" : "Dis");

 mask = SUN4I_TCON_GINT0_VBLANK_ENABLE(0) |
  SUN4I_TCON_GINT0_VBLANK_ENABLE(1) |
  SUN4I_TCON_GINT0_TCON0_TRI_FINISH_ENABLE;

 if (enable)
  val = mask;

 regmap_update_bits(tcon->regs, SUN4I_TCON_GINT0_REG, mask, val);
}
