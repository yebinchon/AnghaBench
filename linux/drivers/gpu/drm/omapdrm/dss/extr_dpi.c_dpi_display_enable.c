
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {int dispc_channel; } ;
struct dpi_data {int lock; scalar_t__ vdds_dsi_reg; TYPE_1__* dss; scalar_t__ pll; struct omap_dss_device output; int id; } ;
struct TYPE_2__ {int dispc; } ;


 int dispc_runtime_get (int ) ;
 int dispc_runtime_put (int ) ;
 int dpi_config_lcd_manager (struct dpi_data*) ;
 struct dpi_data* dpi_get_data_from_dssdev (struct omap_dss_device*) ;
 int dpi_set_mode (struct dpi_data*) ;
 int dss_dpi_select_source (TYPE_1__*,int ,int ) ;
 int dss_mgr_enable (struct omap_dss_device*) ;
 int dss_pll_disable (scalar_t__) ;
 int dss_pll_enable (scalar_t__) ;
 int mdelay (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;

__attribute__((used)) static void dpi_display_enable(struct omap_dss_device *dssdev)
{
 struct dpi_data *dpi = dpi_get_data_from_dssdev(dssdev);
 struct omap_dss_device *out = &dpi->output;
 int r;

 mutex_lock(&dpi->lock);

 if (dpi->vdds_dsi_reg) {
  r = regulator_enable(dpi->vdds_dsi_reg);
  if (r)
   goto err_reg_enable;
 }

 r = dispc_runtime_get(dpi->dss->dispc);
 if (r)
  goto err_get_dispc;

 r = dss_dpi_select_source(dpi->dss, dpi->id, out->dispc_channel);
 if (r)
  goto err_src_sel;

 if (dpi->pll) {
  r = dss_pll_enable(dpi->pll);
  if (r)
   goto err_pll_init;
 }

 r = dpi_set_mode(dpi);
 if (r)
  goto err_set_mode;

 dpi_config_lcd_manager(dpi);

 mdelay(2);

 r = dss_mgr_enable(&dpi->output);
 if (r)
  goto err_mgr_enable;

 mutex_unlock(&dpi->lock);

 return;

err_mgr_enable:
err_set_mode:
 if (dpi->pll)
  dss_pll_disable(dpi->pll);
err_pll_init:
err_src_sel:
 dispc_runtime_put(dpi->dss->dispc);
err_get_dispc:
 if (dpi->vdds_dsi_reg)
  regulator_disable(dpi->vdds_dsi_reg);
err_reg_enable:
 mutex_unlock(&dpi->lock);
}
