
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dummy; } ;
struct dsi_data {int bus_lock; } ;


 struct dsi_data* to_dsi_data (struct omap_dss_device*) ;
 int up (int *) ;

__attribute__((used)) static void dsi_bus_unlock(struct omap_dss_device *dssdev)
{
 struct dsi_data *dsi = to_dsi_data(dssdev);

 up(&dsi->bus_lock);
}
