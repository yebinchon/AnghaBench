
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos_dsi {int dummy; } ;


 int DSIM_MAIN_STAND_BY ;
 int DSIM_MDRESOL_REG ;
 int exynos_dsi_read (struct exynos_dsi*,int ) ;
 int exynos_dsi_write (struct exynos_dsi*,int ,int ) ;

__attribute__((used)) static void exynos_dsi_set_display_enable(struct exynos_dsi *dsi, bool enable)
{
 u32 reg;

 reg = exynos_dsi_read(dsi, DSIM_MDRESOL_REG);
 if (enable)
  reg |= DSIM_MAIN_STAND_BY;
 else
  reg &= ~DSIM_MAIN_STAND_BY;
 exynos_dsi_write(dsi, DSIM_MDRESOL_REG, reg);
}
