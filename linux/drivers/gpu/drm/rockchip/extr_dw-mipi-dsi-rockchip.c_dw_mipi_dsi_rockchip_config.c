
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_mipi_dsi_rockchip {TYPE_1__* cdata; int grf_regmap; } ;
struct TYPE_2__ {int enable; scalar_t__ enable_grf_reg; int lanecfg2; scalar_t__ lanecfg2_grf_reg; int lanecfg1; scalar_t__ lanecfg1_grf_reg; int lcdsel_big; int lcdsel_lit; scalar_t__ lcdsel_grf_reg; } ;


 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static void dw_mipi_dsi_rockchip_config(struct dw_mipi_dsi_rockchip *dsi,
     int mux)
{
 if (dsi->cdata->lcdsel_grf_reg)
  regmap_write(dsi->grf_regmap, dsi->cdata->lcdsel_grf_reg,
   mux ? dsi->cdata->lcdsel_lit : dsi->cdata->lcdsel_big);

 if (dsi->cdata->lanecfg1_grf_reg)
  regmap_write(dsi->grf_regmap, dsi->cdata->lanecfg1_grf_reg,
           dsi->cdata->lanecfg1);

 if (dsi->cdata->lanecfg2_grf_reg)
  regmap_write(dsi->grf_regmap, dsi->cdata->lanecfg2_grf_reg,
           dsi->cdata->lanecfg2);

 if (dsi->cdata->enable_grf_reg)
  regmap_write(dsi->grf_regmap, dsi->cdata->enable_grf_reg,
           dsi->cdata->enable);
}
