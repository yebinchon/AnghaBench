
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {char* name; int bus_flags; int of_ports; int owner; int * ops; int dispc_channel; int type; int id; int dev; } ;
struct dsi_data {scalar_t__ module_id; int dev; struct omap_dss_device output; } ;


 int BIT (int ) ;
 int DRM_BUS_FLAG_DE_HIGH ;
 int DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE ;
 int DRM_BUS_FLAG_SYNC_DRIVE_NEGEDGE ;
 int OMAP_DISPLAY_TYPE_DSI ;
 int OMAP_DSS_OUTPUT_DSI1 ;
 int OMAP_DSS_OUTPUT_DSI2 ;
 int THIS_MODULE ;
 int dsi_get_channel (struct dsi_data*) ;
 int dsi_ops ;
 int omapdss_device_init_output (struct omap_dss_device*) ;
 int omapdss_device_register (struct omap_dss_device*) ;

__attribute__((used)) static int dsi_init_output(struct dsi_data *dsi)
{
 struct omap_dss_device *out = &dsi->output;
 int r;

 out->dev = dsi->dev;
 out->id = dsi->module_id == 0 ?
   OMAP_DSS_OUTPUT_DSI1 : OMAP_DSS_OUTPUT_DSI2;

 out->type = OMAP_DISPLAY_TYPE_DSI;
 out->name = dsi->module_id == 0 ? "dsi.0" : "dsi.1";
 out->dispc_channel = dsi_get_channel(dsi);
 out->ops = &dsi_ops;
 out->owner = THIS_MODULE;
 out->of_ports = BIT(0);
 out->bus_flags = DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE
         | DRM_BUS_FLAG_DE_HIGH
         | DRM_BUS_FLAG_SYNC_DRIVE_NEGEDGE;

 r = omapdss_device_init_output(out);
 if (r < 0)
  return r;

 omapdss_device_register(out);

 return 0;
}
