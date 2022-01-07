
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dummy; } ;
struct dsi_data {int lock; } ;


 int DSSDBG (char*) ;
 int WARN_ON (int) ;
 int dsi_bus_is_locked (struct dsi_data*) ;
 int dsi_display_uninit_dsi (struct dsi_data*,int,int) ;
 int dsi_runtime_put (struct dsi_data*) ;
 int dsi_sync_vc (struct dsi_data*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dsi_data* to_dsi_data (struct omap_dss_device*) ;

__attribute__((used)) static void dsi_display_disable(struct omap_dss_device *dssdev,
  bool disconnect_lanes, bool enter_ulps)
{
 struct dsi_data *dsi = to_dsi_data(dssdev);

 DSSDBG("dsi_display_disable\n");

 WARN_ON(!dsi_bus_is_locked(dsi));

 mutex_lock(&dsi->lock);

 dsi_sync_vc(dsi, 0);
 dsi_sync_vc(dsi, 1);
 dsi_sync_vc(dsi, 2);
 dsi_sync_vc(dsi, 3);

 dsi_display_uninit_dsi(dsi, disconnect_lanes, enter_ulps);

 dsi_runtime_put(dsi);

 mutex_unlock(&dsi->lock);
}
