
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_image_info {struct device* dev; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 struct fpga_image_info* devm_kzalloc (struct device*,int,int ) ;
 int get_device (struct device*) ;
 int put_device (struct device*) ;

struct fpga_image_info *fpga_image_info_alloc(struct device *dev)
{
 struct fpga_image_info *info;

 get_device(dev);

 info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
 if (!info) {
  put_device(dev);
  return ((void*)0);
 }

 info->dev = dev;

 return info;
}
