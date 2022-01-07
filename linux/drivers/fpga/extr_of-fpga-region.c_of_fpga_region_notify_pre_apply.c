
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_overlay_notify_data {int overlay; } ;
struct device {int dummy; } ;
struct fpga_region {struct fpga_image_info* info; struct device dev; } ;
struct fpga_image_info {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct fpga_image_info*) ;
 int PTR_ERR (struct fpga_image_info*) ;
 int dev_err (struct device*,char*) ;
 int fpga_image_info_free (struct fpga_image_info*) ;
 int fpga_region_program_fpga (struct fpga_region*) ;
 struct fpga_image_info* of_fpga_region_parse_ov (struct fpga_region*,int ) ;

__attribute__((used)) static int of_fpga_region_notify_pre_apply(struct fpga_region *region,
        struct of_overlay_notify_data *nd)
{
 struct device *dev = &region->dev;
 struct fpga_image_info *info;
 int ret;

 info = of_fpga_region_parse_ov(region, nd->overlay);
 if (IS_ERR(info))
  return PTR_ERR(info);


 if (!info)
  return 0;

 if (region->info) {
  dev_err(dev, "Region already has overlay applied.\n");
  return -EINVAL;
 }

 region->info = info;
 ret = fpga_region_program_fpga(region);
 if (ret) {

  fpga_image_info_free(info);
  region->info = ((void*)0);
 }

 return ret;
}
