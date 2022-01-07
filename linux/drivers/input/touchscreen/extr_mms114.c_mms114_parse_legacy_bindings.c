
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct touchscreen_properties {int invert_x; int invert_y; int swap_x_y; int max_y; int max_x; } ;
struct mms114_data {int moving_threshold; int contact_threshold; struct touchscreen_properties props; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 int dev_dbg (struct device*,char*) ;
 scalar_t__ device_property_read_bool (struct device*,char*) ;
 scalar_t__ device_property_read_u32 (struct device*,char*,int *) ;

__attribute__((used)) static int mms114_parse_legacy_bindings(struct mms114_data *data)
{
 struct device *dev = &data->client->dev;
 struct touchscreen_properties *props = &data->props;

 if (device_property_read_u32(dev, "x-size", &props->max_x)) {
  dev_dbg(dev, "failed to get legacy x-size property\n");
  return -EINVAL;
 }

 if (device_property_read_u32(dev, "y-size", &props->max_y)) {
  dev_dbg(dev, "failed to get legacy y-size property\n");
  return -EINVAL;
 }

 device_property_read_u32(dev, "contact-threshold",
    &data->contact_threshold);
 device_property_read_u32(dev, "moving-threshold",
    &data->moving_threshold);

 if (device_property_read_bool(dev, "x-invert"))
  props->invert_x = 1;
 if (device_property_read_bool(dev, "y-invert"))
  props->invert_y = 1;

 props->swap_x_y = 0;

 return 0;
}
