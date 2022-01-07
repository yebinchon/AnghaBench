
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sun4i_tcon {int regs; } ;
struct TYPE_2__ {int bpc; int num_bus_formats; int* bus_formats; } ;
struct drm_connector {TYPE_1__ display_info; } ;





 int SUN4I_TCON0_FRM_CTL_EN ;
 int SUN4I_TCON0_FRM_CTL_MODE_B ;
 int SUN4I_TCON0_FRM_CTL_MODE_R ;
 int SUN4I_TCON0_FRM_SEED_LB_REG ;
 int SUN4I_TCON0_FRM_SEED_LG_REG ;
 int SUN4I_TCON0_FRM_SEED_LR_REG ;
 int SUN4I_TCON0_FRM_SEED_PB_REG ;
 int SUN4I_TCON0_FRM_SEED_PG_REG ;
 int SUN4I_TCON0_FRM_SEED_PR_REG ;
 int SUN4I_TCON0_FRM_TBL0_REG ;
 int SUN4I_TCON0_FRM_TBL1_REG ;
 int SUN4I_TCON0_FRM_TBL2_REG ;
 int SUN4I_TCON0_FRM_TBL3_REG ;
 int SUN4I_TCON_FRM_CTL_REG ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void sun4i_tcon0_mode_set_dithering(struct sun4i_tcon *tcon,
        const struct drm_connector *connector)
{
 u32 bus_format = 0;
 u32 val = 0;


 if (!connector)
  return;







 regmap_write(tcon->regs, SUN4I_TCON0_FRM_SEED_PR_REG, 0x11111111);
 regmap_write(tcon->regs, SUN4I_TCON0_FRM_SEED_PG_REG, 0x11111111);
 regmap_write(tcon->regs, SUN4I_TCON0_FRM_SEED_PB_REG, 0x11111111);
 regmap_write(tcon->regs, SUN4I_TCON0_FRM_SEED_LR_REG, 0x11111111);
 regmap_write(tcon->regs, SUN4I_TCON0_FRM_SEED_LG_REG, 0x11111111);
 regmap_write(tcon->regs, SUN4I_TCON0_FRM_SEED_LB_REG, 0x11111111);
 regmap_write(tcon->regs, SUN4I_TCON0_FRM_TBL0_REG, 0x01010000);
 regmap_write(tcon->regs, SUN4I_TCON0_FRM_TBL1_REG, 0x15151111);
 regmap_write(tcon->regs, SUN4I_TCON0_FRM_TBL2_REG, 0x57575555);
 regmap_write(tcon->regs, SUN4I_TCON0_FRM_TBL3_REG, 0x7f7f7777);


 if (connector->display_info.bpc == 6)
  val |= SUN4I_TCON0_FRM_CTL_EN;

 if (connector->display_info.num_bus_formats == 1)
  bus_format = connector->display_info.bus_formats[0];


 switch (bus_format) {
 case 130:

  val |= SUN4I_TCON0_FRM_CTL_MODE_R;
  val |= SUN4I_TCON0_FRM_CTL_MODE_B;

 case 129:
 case 128:

  val |= SUN4I_TCON0_FRM_CTL_EN;
  break;
 }


 regmap_write(tcon->regs, SUN4I_TCON_FRM_CTL_REG, val);
}
