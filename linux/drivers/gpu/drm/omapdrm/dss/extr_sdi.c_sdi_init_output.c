
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {char* name; int bus_flags; int owner; int * ops; int of_ports; int dispc_channel; int type; int id; int * dev; } ;
struct sdi_device {TYPE_1__* pdev; struct omap_dss_device output; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int) ;
 int DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE ;
 int DRM_BUS_FLAG_SYNC_DRIVE_POSEDGE ;
 int OMAP_DISPLAY_TYPE_SDI ;
 int OMAP_DSS_CHANNEL_LCD ;
 int OMAP_DSS_OUTPUT_SDI ;
 int THIS_MODULE ;
 int omapdss_device_init_output (struct omap_dss_device*) ;
 int omapdss_device_register (struct omap_dss_device*) ;
 int sdi_ops ;

__attribute__((used)) static int sdi_init_output(struct sdi_device *sdi)
{
 struct omap_dss_device *out = &sdi->output;
 int r;

 out->dev = &sdi->pdev->dev;
 out->id = OMAP_DSS_OUTPUT_SDI;
 out->type = OMAP_DISPLAY_TYPE_SDI;
 out->name = "sdi.0";
 out->dispc_channel = OMAP_DSS_CHANNEL_LCD;

 out->of_ports = BIT(1);
 out->ops = &sdi_ops;
 out->owner = THIS_MODULE;
 out->bus_flags = DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE
         | DRM_BUS_FLAG_SYNC_DRIVE_POSEDGE;

 r = omapdss_device_init_output(out);
 if (r < 0)
  return r;

 omapdss_device_register(out);

 return 0;
}
