
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_region {int dummy; } ;
struct device {int dummy; } ;


 struct device* class_find_device (int ,struct device*,void const*,int (*) (struct device*,void const*)) ;
 int fpga_region_class ;
 struct fpga_region* to_fpga_region (struct device*) ;

struct fpga_region *fpga_region_class_find(
 struct device *start, const void *data,
 int (*match)(struct device *, const void *))
{
 struct device *dev;

 dev = class_find_device(fpga_region_class, start, data, match);
 if (!dev)
  return ((void*)0);

 return to_fpga_region(dev);
}
