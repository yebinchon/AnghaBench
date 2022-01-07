
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dpaux {int dummy; } ;


 int DPAUX_HYBRID_PADCTL ;
 int DPAUX_HYBRID_PADCTL_AUX_CMH (int) ;
 int DPAUX_HYBRID_PADCTL_AUX_DRVI (int) ;
 int DPAUX_HYBRID_PADCTL_AUX_DRVZ (int) ;
 int DPAUX_HYBRID_PADCTL_AUX_INPUT_RCV ;
 int DPAUX_HYBRID_PADCTL_I2C_SCL_INPUT_RCV ;
 int DPAUX_HYBRID_PADCTL_I2C_SDA_INPUT_RCV ;
 int DPAUX_HYBRID_PADCTL_MODE_AUX ;
 int DPAUX_HYBRID_PADCTL_MODE_I2C ;



 int ENOTSUPP ;
 int tegra_dpaux_pad_power_down (struct tegra_dpaux*) ;
 int tegra_dpaux_pad_power_up (struct tegra_dpaux*) ;
 int tegra_dpaux_writel (struct tegra_dpaux*,int,int ) ;

__attribute__((used)) static int tegra_dpaux_pad_config(struct tegra_dpaux *dpaux, unsigned function)
{
 u32 value;

 switch (function) {
 case 130:
  value = DPAUX_HYBRID_PADCTL_AUX_CMH(2) |
   DPAUX_HYBRID_PADCTL_AUX_DRVZ(4) |
   DPAUX_HYBRID_PADCTL_AUX_DRVI(0x18) |
   DPAUX_HYBRID_PADCTL_AUX_INPUT_RCV |
   DPAUX_HYBRID_PADCTL_MODE_AUX;
  break;

 case 129:
  value = DPAUX_HYBRID_PADCTL_I2C_SDA_INPUT_RCV |
   DPAUX_HYBRID_PADCTL_I2C_SCL_INPUT_RCV |
   DPAUX_HYBRID_PADCTL_AUX_CMH(2) |
   DPAUX_HYBRID_PADCTL_AUX_DRVZ(4) |
   DPAUX_HYBRID_PADCTL_AUX_DRVI(0x18) |
   DPAUX_HYBRID_PADCTL_MODE_I2C;
  break;

 case 128:
  tegra_dpaux_pad_power_down(dpaux);
  return 0;

 default:
  return -ENOTSUPP;
 }

 tegra_dpaux_writel(dpaux, value, DPAUX_HYBRID_PADCTL);
 tegra_dpaux_pad_power_up(dpaux);

 return 0;
}
