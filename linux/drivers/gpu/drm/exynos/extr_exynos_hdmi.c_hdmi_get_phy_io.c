
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hdmi_context {int hdmiphy_port; TYPE_2__* dev; int regs_hdmiphy; TYPE_1__* drv_data; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_3__ {scalar_t__ is_apb_phy; } ;


 int DRM_DEV_ERROR (TYPE_2__*,char*) ;
 int DRM_INFO (char*) ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 struct device_node* of_find_compatible_node (int *,int *,char const*) ;
 int of_find_i2c_device_by_node (struct device_node*) ;
 int of_iomap (struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;

__attribute__((used)) static int hdmi_get_phy_io(struct hdmi_context *hdata)
{
 const char *compatible_str = "samsung,exynos4212-hdmiphy";
 struct device_node *np;
 int ret = 0;

 np = of_find_compatible_node(((void*)0), ((void*)0), compatible_str);
 if (!np) {
  np = of_parse_phandle(hdata->dev->of_node, "phy", 0);
  if (!np) {
   DRM_DEV_ERROR(hdata->dev,
          "Failed to find hdmiphy node in device tree\n");
   return -ENODEV;
  }
 }

 if (hdata->drv_data->is_apb_phy) {
  hdata->regs_hdmiphy = of_iomap(np, 0);
  if (!hdata->regs_hdmiphy) {
   DRM_DEV_ERROR(hdata->dev,
          "failed to ioremap hdmi phy\n");
   ret = -ENOMEM;
   goto out;
  }
 } else {
  hdata->hdmiphy_port = of_find_i2c_device_by_node(np);
  if (!hdata->hdmiphy_port) {
   DRM_INFO("Failed to get hdmi phy i2c client\n");
   ret = -EPROBE_DEFER;
   goto out;
  }
 }

out:
 of_node_put(np);
 return ret;
}
