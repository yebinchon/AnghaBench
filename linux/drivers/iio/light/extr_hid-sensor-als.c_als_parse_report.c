
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct iio_chan_spec {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ index; int report_id; int size; } ;
struct TYPE_4__ {TYPE_2__ sensitivity; } ;
struct als_state {TYPE_1__ common_attributes; int scale_post_decml; int scale_pre_decml; TYPE_2__ als_illum; int scale_precision; } ;


 int CHANNEL_SCAN_INDEX_ILLUM ;
 int CHANNEL_SCAN_INDEX_INTENSITY ;
 int HID_FEATURE_REPORT ;
 int HID_INPUT_REPORT ;
 int HID_USAGE_SENSOR_ALS ;
 int HID_USAGE_SENSOR_DATA_LIGHT ;
 int HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS ;
 int HID_USAGE_SENSOR_LIGHT_ILLUM ;
 int als_adjust_channel_bit_mask (struct iio_chan_spec*,int ,int ) ;
 int dev_dbg (int *,char*,scalar_t__,int ) ;
 int hid_sensor_format_scale (int ,TYPE_2__*,int *,int *) ;
 int sensor_hub_input_get_attribute_info (struct hid_sensor_hub_device*,int ,unsigned int,int,TYPE_2__*) ;

__attribute__((used)) static int als_parse_report(struct platform_device *pdev,
    struct hid_sensor_hub_device *hsdev,
    struct iio_chan_spec *channels,
    unsigned usage_id,
    struct als_state *st)
{
 int ret;

 ret = sensor_hub_input_get_attribute_info(hsdev, HID_INPUT_REPORT,
   usage_id,
   HID_USAGE_SENSOR_LIGHT_ILLUM,
   &st->als_illum);
 if (ret < 0)
  return ret;
 als_adjust_channel_bit_mask(channels, CHANNEL_SCAN_INDEX_INTENSITY,
        st->als_illum.size);
 als_adjust_channel_bit_mask(channels, CHANNEL_SCAN_INDEX_ILLUM,
     st->als_illum.size);

 dev_dbg(&pdev->dev, "als %x:%x\n", st->als_illum.index,
   st->als_illum.report_id);

 st->scale_precision = hid_sensor_format_scale(
    HID_USAGE_SENSOR_ALS,
    &st->als_illum,
    &st->scale_pre_decml, &st->scale_post_decml);


 if (st->common_attributes.sensitivity.index < 0) {
  sensor_hub_input_get_attribute_info(hsdev,
   HID_FEATURE_REPORT, usage_id,
   HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS |
   HID_USAGE_SENSOR_DATA_LIGHT,
   &st->common_attributes.sensitivity);
  dev_dbg(&pdev->dev, "Sensitivity index:report %d:%d\n",
   st->common_attributes.sensitivity.index,
   st->common_attributes.sensitivity.report_id);
 }
 return ret;
}
