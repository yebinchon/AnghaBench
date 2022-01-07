
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos_dsi {int dummy; } ;


 int DSIM_CMD_LPDT_LP ;
 int DSIM_ESCMODE_REG ;
 int exynos_dsi_read (struct exynos_dsi*,int ) ;
 int exynos_dsi_write (struct exynos_dsi*,int ,int ) ;

__attribute__((used)) static void exynos_dsi_set_cmd_lpm(struct exynos_dsi *dsi, bool lpm)
{
 u32 v = exynos_dsi_read(dsi, DSIM_ESCMODE_REG);

 if (lpm)
  v |= DSIM_CMD_LPDT_LP;
 else
  v &= ~DSIM_CMD_LPDT_LP;

 exynos_dsi_write(dsi, DSIM_ESCMODE_REG, v);
}
