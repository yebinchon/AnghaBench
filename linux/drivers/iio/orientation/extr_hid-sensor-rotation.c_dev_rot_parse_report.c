
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct iio_chan_spec {int dummy; } ;
struct hid_sensor_hub_device {int usage; } ;
struct TYPE_5__ {int size; int report_id; int index; } ;
struct TYPE_4__ {TYPE_2__ sensitivity; } ;
struct dev_rot_state {TYPE_1__ common_attributes; int scale_post_decml; int scale_pre_decml; TYPE_2__ quaternion; int scale_precision; } ;


 int HID_FEATURE_REPORT ;
 int HID_INPUT_REPORT ;
 int HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS ;
 int HID_USAGE_SENSOR_DATA_ORIENTATION ;
 int HID_USAGE_SENSOR_ORIENT_QUATERNION ;
 int dev_dbg (int *,char*,int,...) ;
 int dev_rot_adjust_channel_bit_mask (struct iio_chan_spec*,int) ;
 int hid_sensor_format_scale (int ,TYPE_2__*,int *,int *) ;
 int sensor_hub_input_get_attribute_info (struct hid_sensor_hub_device*,int ,unsigned int,int,TYPE_2__*) ;

__attribute__((used)) static int dev_rot_parse_report(struct platform_device *pdev,
    struct hid_sensor_hub_device *hsdev,
    struct iio_chan_spec *channels,
    unsigned usage_id,
    struct dev_rot_state *st)
{
 int ret;

 ret = sensor_hub_input_get_attribute_info(hsdev,
    HID_INPUT_REPORT,
    usage_id,
    HID_USAGE_SENSOR_ORIENT_QUATERNION,
    &st->quaternion);
 if (ret)
  return ret;

 dev_rot_adjust_channel_bit_mask(&channels[0],
  st->quaternion.size / 4);

 dev_dbg(&pdev->dev, "dev_rot %x:%x\n", st->quaternion.index,
  st->quaternion.report_id);

 dev_dbg(&pdev->dev, "dev_rot: attrib size %d\n",
    st->quaternion.size);

 st->scale_precision = hid_sensor_format_scale(
    hsdev->usage,
    &st->quaternion,
    &st->scale_pre_decml, &st->scale_post_decml);


 if (st->common_attributes.sensitivity.index < 0) {
  sensor_hub_input_get_attribute_info(hsdev,
   HID_FEATURE_REPORT, usage_id,
   HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS |
   HID_USAGE_SENSOR_DATA_ORIENTATION,
   &st->common_attributes.sensitivity);
  dev_dbg(&pdev->dev, "Sensitivity index:report %d:%d\n",
   st->common_attributes.sensitivity.index,
   st->common_attributes.sensitivity.report_id);
 }

 return 0;
}
