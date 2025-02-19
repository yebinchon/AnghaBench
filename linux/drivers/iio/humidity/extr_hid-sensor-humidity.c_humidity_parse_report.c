
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ index; int size; } ;
struct TYPE_4__ {TYPE_2__ sensitivity; } ;
struct hid_humidity_state {TYPE_1__ common_attributes; int scale_post_decml; int scale_pre_decml; TYPE_2__ humidity_attr; int scale_precision; } ;


 int HID_FEATURE_REPORT ;
 int HID_INPUT_REPORT ;
 int HID_USAGE_SENSOR_ATMOSPHERIC_HUMIDITY ;
 int HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS ;
 int HID_USAGE_SENSOR_HUMIDITY ;
 int hid_sensor_format_scale (int ,TYPE_2__*,int *,int *) ;
 int humidity_adjust_channel_bit_mask (struct iio_chan_spec*,int ,int ) ;
 int sensor_hub_input_get_attribute_info (struct hid_sensor_hub_device*,int ,unsigned int,int,TYPE_2__*) ;

__attribute__((used)) static int humidity_parse_report(struct platform_device *pdev,
    struct hid_sensor_hub_device *hsdev,
    struct iio_chan_spec *channels,
    unsigned int usage_id,
    struct hid_humidity_state *st)
{
 int ret;

 ret = sensor_hub_input_get_attribute_info(hsdev, HID_INPUT_REPORT,
     usage_id,
     HID_USAGE_SENSOR_ATMOSPHERIC_HUMIDITY,
     &st->humidity_attr);
 if (ret < 0)
  return ret;

 humidity_adjust_channel_bit_mask(channels, 0, st->humidity_attr.size);

 st->scale_precision = hid_sensor_format_scale(
      HID_USAGE_SENSOR_HUMIDITY,
      &st->humidity_attr,
      &st->scale_pre_decml,
      &st->scale_post_decml);


 if (st->common_attributes.sensitivity.index < 0)
  sensor_hub_input_get_attribute_info(hsdev,
   HID_FEATURE_REPORT, usage_id,
   HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS |
   HID_USAGE_SENSOR_ATMOSPHERIC_HUMIDITY,
   &st->common_attributes.sensitivity);

 return ret;
}
