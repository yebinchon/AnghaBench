
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dummy; } ;
struct dsi_data {int lock; } ;


 int DSSDBG (char*) ;
 int WARN_ON (int) ;
 int _dsi_initialize_irq (struct dsi_data*) ;
 int dsi_bus_is_locked (struct dsi_data*) ;
 int dsi_display_init_dsi (struct dsi_data*) ;
 int dsi_runtime_get (struct dsi_data*) ;
 int dsi_runtime_put (struct dsi_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dsi_data* to_dsi_data (struct omap_dss_device*) ;

__attribute__((used)) static void dsi_display_enable(struct omap_dss_device *dssdev)
{
 struct dsi_data *dsi = to_dsi_data(dssdev);
 int r;

 DSSDBG("dsi_display_enable\n");

 WARN_ON(!dsi_bus_is_locked(dsi));

 mutex_lock(&dsi->lock);

 r = dsi_runtime_get(dsi);
 if (r)
  goto err_get_dsi;

 _dsi_initialize_irq(dsi);

 r = dsi_display_init_dsi(dsi);
 if (r)
  goto err_init_dsi;

 mutex_unlock(&dsi->lock);

 return;

err_init_dsi:
 dsi_runtime_put(dsi);
err_get_dsi:
 mutex_unlock(&dsi->lock);
 DSSDBG("dsi_display_enable FAILED\n");
}
