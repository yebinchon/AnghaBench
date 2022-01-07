
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {char* name; int ops_flags; int of_ports; int owner; int * ops; int dispc_channel; int type; int id; int * dev; } ;
struct venc_device {TYPE_1__* pdev; struct omap_dss_device output; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int ) ;
 int OMAP_DISPLAY_TYPE_VENC ;
 int OMAP_DSS_CHANNEL_DIGIT ;
 int OMAP_DSS_DEVICE_OP_MODES ;
 int OMAP_DSS_OUTPUT_VENC ;
 int THIS_MODULE ;
 int omapdss_device_init_output (struct omap_dss_device*) ;
 int omapdss_device_register (struct omap_dss_device*) ;
 int venc_ops ;

__attribute__((used)) static int venc_init_output(struct venc_device *venc)
{
 struct omap_dss_device *out = &venc->output;
 int r;

 out->dev = &venc->pdev->dev;
 out->id = OMAP_DSS_OUTPUT_VENC;
 out->type = OMAP_DISPLAY_TYPE_VENC;
 out->name = "venc.0";
 out->dispc_channel = OMAP_DSS_CHANNEL_DIGIT;
 out->ops = &venc_ops;
 out->owner = THIS_MODULE;
 out->of_ports = BIT(0);
 out->ops_flags = OMAP_DSS_DEVICE_OP_MODES;

 r = omapdss_device_init_output(out);
 if (r < 0)
  return r;

 omapdss_device_register(out);

 return 0;
}
