
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipu_client_platformdata {struct device_node* of_node; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; struct ipu_client_platformdata* platform_data; TYPE_1__* driver; } ;
struct TYPE_2__ {int name; } ;


 struct device_node* of_get_parent (struct device_node*) ;
 scalar_t__ of_node_name_eq (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int compare_of(struct device *dev, void *data)
{
 struct device_node *np = data;


 if (strcmp(dev->driver->name, "imx-ipuv3-crtc") == 0) {
  struct ipu_client_platformdata *pdata = dev->platform_data;

  return pdata->of_node == np;
 }


 if (of_node_name_eq(np, "lvds-channel")) {
  np = of_get_parent(np);
  of_node_put(np);
 }

 return dev->of_node == np;
}
