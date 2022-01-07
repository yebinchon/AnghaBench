
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_dsi_driver_data {scalar_t__* reg_values; scalar_t__ wait_for_reset; } ;
struct exynos_dsi {int lanes; struct exynos_dsi_driver_data* driver_data; } ;


 scalar_t__ BIT (int ) ;
 scalar_t__ DSIM_FUNCRST ;
 size_t RESET_TYPE ;
 int exynos_dsi_enable_clock (struct exynos_dsi*) ;
 int exynos_dsi_enable_irq (struct exynos_dsi*) ;
 int exynos_dsi_enable_lane (struct exynos_dsi*,scalar_t__) ;
 int exynos_dsi_init_link (struct exynos_dsi*) ;
 int exynos_dsi_reset (struct exynos_dsi*) ;
 int exynos_dsi_set_phy_ctrl (struct exynos_dsi*) ;
 int exynos_dsi_wait_for_reset (struct exynos_dsi*) ;

__attribute__((used)) static int exynos_dsi_init(struct exynos_dsi *dsi)
{
 const struct exynos_dsi_driver_data *driver_data = dsi->driver_data;

 exynos_dsi_reset(dsi);
 exynos_dsi_enable_irq(dsi);

 if (driver_data->reg_values[RESET_TYPE] == DSIM_FUNCRST)
  exynos_dsi_enable_lane(dsi, BIT(dsi->lanes) - 1);

 exynos_dsi_enable_clock(dsi);
 if (driver_data->wait_for_reset)
  exynos_dsi_wait_for_reset(dsi);
 exynos_dsi_set_phy_ctrl(dsi);
 exynos_dsi_init_link(dsi);

 return 0;
}
