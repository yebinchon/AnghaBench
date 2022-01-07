
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_lmu_bank {scalar_t__ max_brightness; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ MAX_BRIGHTNESS_11BIT ;
 scalar_t__ MAX_BRIGHTNESS_8BIT ;
 int device_property_read_u32 (struct device*,char*,scalar_t__*) ;
 int fwnode_property_read_u32 (struct fwnode_handle*,char*,scalar_t__*) ;

int ti_lmu_common_get_brt_res(struct device *dev, struct fwnode_handle *child,
      struct ti_lmu_bank *lmu_data)
{
 int ret;

 ret = device_property_read_u32(dev, "ti,brightness-resolution",
           &lmu_data->max_brightness);
 if (ret)
  ret = fwnode_property_read_u32(child,
            "ti,brightness-resolution",
            &lmu_data->max_brightness);
 if (lmu_data->max_brightness <= 0) {
  lmu_data->max_brightness = MAX_BRIGHTNESS_8BIT;
  return ret;
 }

 if (lmu_data->max_brightness > MAX_BRIGHTNESS_11BIT)
   lmu_data->max_brightness = MAX_BRIGHTNESS_11BIT;


 return 0;
}
