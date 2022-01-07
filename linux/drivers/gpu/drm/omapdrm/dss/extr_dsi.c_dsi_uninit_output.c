
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dummy; } ;
struct dsi_data {struct omap_dss_device output; } ;


 int omapdss_device_cleanup_output (struct omap_dss_device*) ;
 int omapdss_device_unregister (struct omap_dss_device*) ;

__attribute__((used)) static void dsi_uninit_output(struct dsi_data *dsi)
{
 struct omap_dss_device *out = &dsi->output;

 omapdss_device_unregister(out);
 omapdss_device_cleanup_output(out);
}
