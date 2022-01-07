
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ index; int size; } ;
struct TYPE_4__ {TYPE_2__ sensitivity; } ;
struct temperature_state {TYPE_1__ common_attributes; int scale_post_decml; int scale_pre_decml; TYPE_2__ temperature_attr; int scale_precision; } ;
struct platform_device {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;


 int HID_FEATURE_REPORT ;
 int HID_INPUT_REPORT ;
 int HID_USAGE_SENSOR_DATA_ENVIRONMENTAL_TEMPERATURE ;
 int HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS ;
 int HID_USAGE_SENSOR_TEMPERATURE ;
 int hid_sensor_format_scale (int ,TYPE_2__*,int *,int *) ;
 int sensor_hub_input_get_attribute_info (struct hid_sensor_hub_device*,int ,unsigned int,int,TYPE_2__*) ;
 int temperature_adjust_channel_bit_mask (struct iio_chan_spec*,int ,int ) ;

__attribute__((used)) static int temperature_parse_report(struct platform_device *pdev,
    struct hid_sensor_hub_device *hsdev,
    struct iio_chan_spec *channels,
    unsigned int usage_id,
    struct temperature_state *st)
{
 int ret;

 ret = sensor_hub_input_get_attribute_info(hsdev, HID_INPUT_REPORT,
   usage_id,
   HID_USAGE_SENSOR_DATA_ENVIRONMENTAL_TEMPERATURE,
   &st->temperature_attr);
 if (ret < 0)
  return ret;

 temperature_adjust_channel_bit_mask(channels, 0,
     st->temperature_attr.size);

 st->scale_precision = hid_sensor_format_scale(
    HID_USAGE_SENSOR_TEMPERATURE,
    &st->temperature_attr,
    &st->scale_pre_decml, &st->scale_post_decml);


 if (st->common_attributes.sensitivity.index < 0)
  sensor_hub_input_get_attribute_info(hsdev,
   HID_FEATURE_REPORT, usage_id,
   HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS |
   HID_USAGE_SENSOR_DATA_ENVIRONMENTAL_TEMPERATURE,
   &st->common_attributes.sensitivity);

 return ret;
}
