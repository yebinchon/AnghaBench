
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {struct device_node* parent; } ;
struct device {struct device_node* of_node; } ;


 int DRM_DEV_DEBUG (struct device*,char*,struct device_node*) ;
 int DRM_DEV_ERROR (struct device*,char*) ;
 int ENODEV ;
 int is_support_iommu ;
 int of_device_is_available (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;

__attribute__((used)) static int rockchip_drm_platform_of_probe(struct device *dev)
{
 struct device_node *np = dev->of_node;
 struct device_node *port;
 bool found = 0;
 int i;

 if (!np)
  return -ENODEV;

 for (i = 0;; i++) {
  struct device_node *iommu;

  port = of_parse_phandle(np, "ports", i);
  if (!port)
   break;

  if (!of_device_is_available(port->parent)) {
   of_node_put(port);
   continue;
  }

  iommu = of_parse_phandle(port->parent, "iommus", 0);
  if (!iommu || !of_device_is_available(iommu->parent)) {
   DRM_DEV_DEBUG(dev,
          "no iommu attached for %pOF, using non-iommu buffers\n",
          port->parent);




   is_support_iommu = 0;
  }

  found = 1;

  of_node_put(iommu);
  of_node_put(port);
 }

 if (i == 0) {
  DRM_DEV_ERROR(dev, "missing 'ports' property\n");
  return -ENODEV;
 }

 if (!found) {
  DRM_DEV_ERROR(dev,
         "No available vop found for display-subsystem.\n");
  return -ENODEV;
 }

 return 0;
}
