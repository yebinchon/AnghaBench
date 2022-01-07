
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rockchip_lvds {int pclk; int dev; TYPE_1__* soc_data; int grf; } ;
struct TYPE_2__ {int grf_soc_con7; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int LVDS_CH0_EN ;
 int LVDS_CH1_EN ;
 int LVDS_DUAL ;
 int LVDS_PWRDN ;
 int LVDS_TTL_EN ;
 int RK3288_LVDS_CFG_REG21 ;
 int RK3288_LVDS_CFG_REG21_TX_ENABLE ;
 int RK3288_LVDS_CFG_REGC ;
 int RK3288_LVDS_CFG_REGC_PLL_ENABLE ;
 int clk_disable (int ) ;
 int lvds_writel (struct rockchip_lvds*,int ,int ) ;
 int pm_runtime_put (int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void rockchip_lvds_poweroff(struct rockchip_lvds *lvds)
{
 int ret;
 u32 val;

 lvds_writel(lvds, RK3288_LVDS_CFG_REG21, RK3288_LVDS_CFG_REG21_TX_ENABLE);
 lvds_writel(lvds, RK3288_LVDS_CFG_REGC, RK3288_LVDS_CFG_REGC_PLL_ENABLE);
 val = LVDS_DUAL | LVDS_TTL_EN | LVDS_CH0_EN | LVDS_CH1_EN | LVDS_PWRDN;
 val |= val << 16;
 ret = regmap_write(lvds->grf, lvds->soc_data->grf_soc_con7, val);
 if (ret != 0)
  DRM_DEV_ERROR(lvds->dev, "Could not write to GRF: %d\n", ret);

 pm_runtime_put(lvds->dev);
 clk_disable(lvds->pclk);
}
