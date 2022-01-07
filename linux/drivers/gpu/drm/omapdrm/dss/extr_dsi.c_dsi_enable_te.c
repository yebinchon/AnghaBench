
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dummy; } ;
struct dsi_data {int te_enabled; } ;


 struct dsi_data* to_dsi_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsi_enable_te(struct omap_dss_device *dssdev, bool enable)
{
 struct dsi_data *dsi = to_dsi_data(dssdev);

 dsi->te_enabled = enable;
 return 0;
}
