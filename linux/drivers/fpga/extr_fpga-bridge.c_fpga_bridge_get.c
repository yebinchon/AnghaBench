
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_image_info {int dummy; } ;
struct fpga_bridge {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 struct fpga_bridge* ERR_PTR (int ) ;
 struct fpga_bridge* __fpga_bridge_get (struct device*,struct fpga_image_info*) ;
 struct device* class_find_device (int ,int *,struct device*,int ) ;
 int fpga_bridge_class ;
 int fpga_bridge_dev_match ;

struct fpga_bridge *fpga_bridge_get(struct device *dev,
        struct fpga_image_info *info)
{
 struct device *bridge_dev;

 bridge_dev = class_find_device(fpga_bridge_class, ((void*)0), dev,
           fpga_bridge_dev_match);
 if (!bridge_dev)
  return ERR_PTR(-ENODEV);

 return __fpga_bridge_get(bridge_dev, info);
}
