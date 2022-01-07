
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_manager {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 struct fpga_manager* ERR_PTR (int ) ;
 struct fpga_manager* __fpga_mgr_get (struct device*) ;
 struct device* class_find_device_by_of_node (int ,struct device_node*) ;
 int fpga_mgr_class ;

struct fpga_manager *of_fpga_mgr_get(struct device_node *node)
{
 struct device *dev;

 dev = class_find_device_by_of_node(fpga_mgr_class, node);
 if (!dev)
  return ERR_PTR(-ENODEV);

 return __fpga_mgr_get(dev);
}
