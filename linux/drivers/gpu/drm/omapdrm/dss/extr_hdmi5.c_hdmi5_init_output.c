
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {char* name; int ops_flags; int of_ports; int owner; int * ops; int dispc_channel; int type; int id; int * dev; } ;
struct omap_hdmi {TYPE_1__* pdev; struct omap_dss_device output; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int ) ;
 int OMAP_DISPLAY_TYPE_HDMI ;
 int OMAP_DSS_CHANNEL_DIGIT ;
 int OMAP_DSS_DEVICE_OP_EDID ;
 int OMAP_DSS_OUTPUT_HDMI ;
 int THIS_MODULE ;
 int hdmi_ops ;
 int omapdss_device_init_output (struct omap_dss_device*) ;
 int omapdss_device_register (struct omap_dss_device*) ;

__attribute__((used)) static int hdmi5_init_output(struct omap_hdmi *hdmi)
{
 struct omap_dss_device *out = &hdmi->output;
 int r;

 out->dev = &hdmi->pdev->dev;
 out->id = OMAP_DSS_OUTPUT_HDMI;
 out->type = OMAP_DISPLAY_TYPE_HDMI;
 out->name = "hdmi.0";
 out->dispc_channel = OMAP_DSS_CHANNEL_DIGIT;
 out->ops = &hdmi_ops;
 out->owner = THIS_MODULE;
 out->of_ports = BIT(0);
 out->ops_flags = OMAP_DSS_DEVICE_OP_EDID;

 r = omapdss_device_init_output(out);
 if (r < 0)
  return r;

 omapdss_device_register(out);

 return 0;
}
