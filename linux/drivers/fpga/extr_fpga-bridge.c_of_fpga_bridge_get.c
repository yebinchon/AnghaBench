
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_image_info {int dummy; } ;
struct fpga_bridge {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 struct fpga_bridge* ERR_PTR (int ) ;
 struct fpga_bridge* __fpga_bridge_get (struct device*,struct fpga_image_info*) ;
 struct device* class_find_device_by_of_node (int ,struct device_node*) ;
 int fpga_bridge_class ;

struct fpga_bridge *of_fpga_bridge_get(struct device_node *np,
           struct fpga_image_info *info)
{
 struct device *dev;

 dev = class_find_device_by_of_node(fpga_bridge_class, np);
 if (!dev)
  return ERR_PTR(-ENODEV);

 return __fpga_bridge_get(dev, info);
}
