
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_image_info {struct fpga_image_info* firmware_name; struct device* dev; } ;
struct device {int dummy; } ;


 int devm_kfree (struct device*,struct fpga_image_info*) ;
 int put_device (struct device*) ;

void fpga_image_info_free(struct fpga_image_info *info)
{
 struct device *dev;

 if (!info)
  return;

 dev = info->dev;
 if (info->firmware_name)
  devm_kfree(dev, info->firmware_name);

 devm_kfree(dev, info);
 put_device(dev);
}
