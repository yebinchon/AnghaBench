
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct exynos_dsi_driver_data {unsigned int* reg_values; scalar_t__ has_freqband; } ;
struct exynos_dsi {struct exynos_dsi_driver_data* driver_data; } ;


 int DSIM_PHYCTRL_REG ;
 int DSIM_PHYTIMING1_REG ;
 int DSIM_PHYTIMING2_REG ;
 int DSIM_PHYTIMING_REG ;
 size_t PHYCTRL_SLEW_UP ;
 size_t PHYCTRL_ULPS_EXIT ;
 size_t PHYCTRL_VREG_LP ;
 size_t PHYTIMING_CLK_POST ;
 size_t PHYTIMING_CLK_PREPARE ;
 size_t PHYTIMING_CLK_TRAIL ;
 size_t PHYTIMING_CLK_ZERO ;
 size_t PHYTIMING_HS_EXIT ;
 size_t PHYTIMING_HS_PREPARE ;
 size_t PHYTIMING_HS_TRAIL ;
 size_t PHYTIMING_HS_ZERO ;
 size_t PHYTIMING_LPX ;
 int exynos_dsi_write (struct exynos_dsi*,int ,unsigned int) ;

__attribute__((used)) static void exynos_dsi_set_phy_ctrl(struct exynos_dsi *dsi)
{
 const struct exynos_dsi_driver_data *driver_data = dsi->driver_data;
 const unsigned int *reg_values = driver_data->reg_values;
 u32 reg;

 if (driver_data->has_freqband)
  return;


 reg = reg_values[PHYCTRL_ULPS_EXIT] | reg_values[PHYCTRL_VREG_LP] |
  reg_values[PHYCTRL_SLEW_UP];
 exynos_dsi_write(dsi, DSIM_PHYCTRL_REG, reg);






 reg = reg_values[PHYTIMING_LPX] | reg_values[PHYTIMING_HS_EXIT];
 exynos_dsi_write(dsi, DSIM_PHYTIMING_REG, reg);
 reg = reg_values[PHYTIMING_CLK_PREPARE] |
  reg_values[PHYTIMING_CLK_ZERO] |
  reg_values[PHYTIMING_CLK_POST] |
  reg_values[PHYTIMING_CLK_TRAIL];

 exynos_dsi_write(dsi, DSIM_PHYTIMING1_REG, reg);
 reg = reg_values[PHYTIMING_HS_PREPARE] | reg_values[PHYTIMING_HS_ZERO] |
  reg_values[PHYTIMING_HS_TRAIL];
 exynos_dsi_write(dsi, DSIM_PHYTIMING2_REG, reg);
}
