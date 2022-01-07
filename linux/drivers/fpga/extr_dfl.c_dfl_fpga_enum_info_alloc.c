
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfl_fpga_enum_info {int dfls; struct device* dev; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct dfl_fpga_enum_info* devm_kzalloc (struct device*,int,int ) ;
 int get_device (struct device*) ;
 int put_device (struct device*) ;

struct dfl_fpga_enum_info *dfl_fpga_enum_info_alloc(struct device *dev)
{
 struct dfl_fpga_enum_info *info;

 get_device(dev);

 info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
 if (!info) {
  put_device(dev);
  return ((void*)0);
 }

 info->dev = dev;
 INIT_LIST_HEAD(&info->dfls);

 return info;
}
