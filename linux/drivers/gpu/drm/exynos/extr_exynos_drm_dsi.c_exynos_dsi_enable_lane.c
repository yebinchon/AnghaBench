
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos_dsi {scalar_t__ lanes; } ;


 int DSIM_CONFIG_REG ;
 int DSIM_LANE_EN (int) ;
 int DSIM_LANE_EN_CLK ;
 int DSIM_NUM_OF_DATA_LANE (scalar_t__) ;
 int exynos_dsi_read (struct exynos_dsi*,int ) ;
 int exynos_dsi_write (struct exynos_dsi*,int ,int) ;

__attribute__((used)) static void exynos_dsi_enable_lane(struct exynos_dsi *dsi, u32 lane)
{
 u32 reg = exynos_dsi_read(dsi, DSIM_CONFIG_REG);
 reg |= (DSIM_NUM_OF_DATA_LANE(dsi->lanes - 1) | DSIM_LANE_EN_CLK |
   DSIM_LANE_EN(lane));
 exynos_dsi_write(dsi, DSIM_CONFIG_REG, reg);
}
