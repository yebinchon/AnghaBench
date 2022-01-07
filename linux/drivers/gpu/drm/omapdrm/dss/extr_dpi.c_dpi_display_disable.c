
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_dss_device {int dummy; } ;
struct TYPE_4__ {int dispc_channel; } ;
struct dpi_data {int lock; scalar_t__ vdds_dsi_reg; TYPE_1__* dss; scalar_t__ pll; TYPE_2__ output; } ;
struct TYPE_3__ {int dispc; } ;


 int DSS_CLK_SRC_FCK ;
 int dispc_runtime_put (int ) ;
 struct dpi_data* dpi_get_data_from_dssdev (struct omap_dss_device*) ;
 int dss_mgr_disable (TYPE_2__*) ;
 int dss_pll_disable (scalar_t__) ;
 int dss_select_lcd_clk_source (TYPE_1__*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_disable (scalar_t__) ;

__attribute__((used)) static void dpi_display_disable(struct omap_dss_device *dssdev)
{
 struct dpi_data *dpi = dpi_get_data_from_dssdev(dssdev);

 mutex_lock(&dpi->lock);

 dss_mgr_disable(&dpi->output);

 if (dpi->pll) {
  dss_select_lcd_clk_source(dpi->dss, dpi->output.dispc_channel,
       DSS_CLK_SRC_FCK);
  dss_pll_disable(dpi->pll);
 }

 dispc_runtime_put(dpi->dss->dispc);

 if (dpi->vdds_dsi_reg)
  regulator_disable(dpi->vdds_dsi_reg);

 mutex_unlock(&dpi->lock);
}
