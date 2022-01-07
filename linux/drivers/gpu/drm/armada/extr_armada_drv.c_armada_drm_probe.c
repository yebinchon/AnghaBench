
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {char** platform_data; scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct component_match {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int armada_add_endpoints (struct device*,struct component_match**,scalar_t__) ;
 int armada_master_ops ;
 struct device* bus_find_device_by_name (int *,int *,char*) ;
 int compare_dev_name ;
 int component_master_add_with_match (struct device*,int *,struct component_match*) ;
 int component_match_add (struct device*,struct component_match**,int ,char*) ;
 int dev_err (struct device*,char*) ;
 int drm_of_component_probe (struct device*,int ,int *) ;
 int platform_bus_type ;
 int put_device (struct device*) ;

__attribute__((used)) static int armada_drm_probe(struct platform_device *pdev)
{
 struct component_match *match = ((void*)0);
 struct device *dev = &pdev->dev;
 int ret;

 ret = drm_of_component_probe(dev, compare_dev_name, &armada_master_ops);
 if (ret != -EINVAL)
  return ret;

 if (dev->platform_data) {
  char **devices = dev->platform_data;
  struct device *d;
  int i;

  for (i = 0; devices[i]; i++)
   component_match_add(dev, &match, compare_dev_name,
         devices[i]);

  if (i == 0) {
   dev_err(dev, "missing 'ports' property\n");
   return -ENODEV;
  }

  for (i = 0; devices[i]; i++) {
   d = bus_find_device_by_name(&platform_bus_type, ((void*)0),
          devices[i]);
   if (d && d->of_node)
    armada_add_endpoints(dev, &match, d->of_node);
   put_device(d);
  }
 }

 return component_master_add_with_match(&pdev->dev, &armada_master_ops,
            match);
}
