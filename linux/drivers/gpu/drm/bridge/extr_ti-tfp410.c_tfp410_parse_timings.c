
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_bridge_timings {int input_bus_flags; void* hold_time_ps; void* setup_time_ps; } ;
struct tfp410 {TYPE_1__* dev; int bus_format; struct drm_bridge_timings timings; } ;
struct device_node {int dummy; } ;
typedef int s32 ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int DRM_BUS_FLAG_DE_HIGH ;
 int DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE ;
 int DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE ;
 int DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE ;
 int DRM_BUS_FLAG_SYNC_SAMPLE_POSEDGE ;
 int EINVAL ;
 int MEDIA_BUS_FMT_RGB888_1X24 ;
 int MEDIA_BUS_FMT_RGB888_2X12_LE ;
 void* min (int ,int) ;
 struct device_node* of_graph_get_endpoint_by_regs (struct device_node*,int ,int ) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 struct drm_bridge_timings tfp410_default_timings ;

__attribute__((used)) static int tfp410_parse_timings(struct tfp410 *dvi, bool i2c)
{
 struct drm_bridge_timings *timings = &dvi->timings;
 struct device_node *ep;
 u32 pclk_sample = 0;
 u32 bus_width = 24;
 s32 deskew = 0;


 *timings = tfp410_default_timings;

 if (i2c)





  return 0;






 ep = of_graph_get_endpoint_by_regs(dvi->dev->of_node, 0, 0);
 if (!ep)
  return -EINVAL;


 of_property_read_u32(ep, "pclk-sample", &pclk_sample);
 of_property_read_u32(ep, "bus-width", &bus_width);
 of_node_put(ep);

 timings->input_bus_flags = DRM_BUS_FLAG_DE_HIGH;

 switch (pclk_sample) {
 case 0:
  timings->input_bus_flags |= DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE
      | DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE;
  break;
 case 1:
  timings->input_bus_flags |= DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE
      | DRM_BUS_FLAG_SYNC_SAMPLE_POSEDGE;
  break;
 default:
  return -EINVAL;
 }

 switch (bus_width) {
 case 12:
  dvi->bus_format = MEDIA_BUS_FMT_RGB888_2X12_LE;
  break;
 case 24:
  dvi->bus_format = MEDIA_BUS_FMT_RGB888_1X24;
  break;
 default:
  return -EINVAL;
 }


 of_property_read_u32(dvi->dev->of_node, "ti,deskew", (u32 *)&deskew);
 if (deskew < -4 || deskew > 3)
  return -EINVAL;

 timings->setup_time_ps = min(0, 1200 - 350 * deskew);
 timings->hold_time_ps = min(0, 1300 + 350 * deskew);

 return 0;
}
