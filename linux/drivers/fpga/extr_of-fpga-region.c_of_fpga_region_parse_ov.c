
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct fpga_region {scalar_t__ info; struct device dev; } ;
struct fpga_image_info {int flags; int firmware_name; int config_complete_timeout_us; int disable_timeout_us; int enable_timeout_us; struct device_node* overlay; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct fpga_image_info* ERR_PTR (int) ;
 int FPGA_MGR_ENCRYPTED_BITSTREAM ;
 int FPGA_MGR_EXTERNAL_CONFIG ;
 int FPGA_MGR_PARTIAL_RECONFIG ;
 int GFP_KERNEL ;
 int child_regions_with_firmware (struct device_node*) ;
 int dev_err (struct device*,char*) ;
 int devm_kstrdup (struct device*,char const*,int ) ;
 struct fpga_image_info* fpga_image_info_alloc (struct device*) ;
 int fpga_image_info_free (struct fpga_image_info*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static struct fpga_image_info *of_fpga_region_parse_ov(
      struct fpga_region *region,
      struct device_node *overlay)
{
 struct device *dev = &region->dev;
 struct fpga_image_info *info;
 const char *firmware_name;
 int ret;

 if (region->info) {
  dev_err(dev, "Region already has overlay applied.\n");
  return ERR_PTR(-EINVAL);
 }






 ret = child_regions_with_firmware(overlay);
 if (ret)
  return ERR_PTR(ret);

 info = fpga_image_info_alloc(dev);
 if (!info)
  return ERR_PTR(-ENOMEM);

 info->overlay = overlay;


 if (of_property_read_bool(overlay, "partial-fpga-config"))
  info->flags |= FPGA_MGR_PARTIAL_RECONFIG;

 if (of_property_read_bool(overlay, "external-fpga-config"))
  info->flags |= FPGA_MGR_EXTERNAL_CONFIG;

 if (of_property_read_bool(overlay, "encrypted-fpga-config"))
  info->flags |= FPGA_MGR_ENCRYPTED_BITSTREAM;

 if (!of_property_read_string(overlay, "firmware-name",
         &firmware_name)) {
  info->firmware_name = devm_kstrdup(dev, firmware_name,
         GFP_KERNEL);
  if (!info->firmware_name)
   return ERR_PTR(-ENOMEM);
 }

 of_property_read_u32(overlay, "region-unfreeze-timeout-us",
        &info->enable_timeout_us);

 of_property_read_u32(overlay, "region-freeze-timeout-us",
        &info->disable_timeout_us);

 of_property_read_u32(overlay, "config-complete-timeout-us",
        &info->config_complete_timeout_us);


 if (!info->firmware_name) {
  ret = 0;
  goto ret_no_info;
 }





 if (info->flags & FPGA_MGR_EXTERNAL_CONFIG) {
  dev_err(dev, "error: specified firmware and external-fpga-config");
  ret = -EINVAL;
  goto ret_no_info;
 }

 return info;
ret_no_info:
 fpga_image_info_free(info);
 return ERR_PTR(ret);
}
