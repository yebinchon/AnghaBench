
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_5__ {scalar_t__ index; int report_id; int size; } ;
struct TYPE_4__ {TYPE_2__ sensitivity; } ;
struct incl_3d_state {TYPE_1__ common_attributes; int scale_post_decml; int scale_pre_decml; TYPE_2__* incl; int scale_precision; } ;
struct iio_chan_spec {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;


 size_t CHANNEL_SCAN_INDEX_X ;
 size_t CHANNEL_SCAN_INDEX_Y ;
 size_t CHANNEL_SCAN_INDEX_Z ;
 int HID_FEATURE_REPORT ;
 int HID_INPUT_REPORT ;
 int HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS ;
 int HID_USAGE_SENSOR_DATA_ORIENTATION ;
 int HID_USAGE_SENSOR_INCLINOMETER_3D ;
 int HID_USAGE_SENSOR_ORIENT_TILT_X ;
 int HID_USAGE_SENSOR_ORIENT_TILT_Y ;
 int HID_USAGE_SENSOR_ORIENT_TILT_Z ;
 int dev_dbg (int *,char*,scalar_t__,int ,...) ;
 int hid_sensor_format_scale (int ,TYPE_2__*,int *,int *) ;
 int incl_3d_adjust_channel_bit_mask (struct iio_chan_spec*,int ) ;
 int sensor_hub_input_get_attribute_info (struct hid_sensor_hub_device*,int ,unsigned int,int,TYPE_2__*) ;

__attribute__((used)) static int incl_3d_parse_report(struct platform_device *pdev,
    struct hid_sensor_hub_device *hsdev,
    struct iio_chan_spec *channels,
    unsigned usage_id,
    struct incl_3d_state *st)
{
 int ret;

 ret = sensor_hub_input_get_attribute_info(hsdev,
    HID_INPUT_REPORT,
    usage_id,
    HID_USAGE_SENSOR_ORIENT_TILT_X,
    &st->incl[CHANNEL_SCAN_INDEX_X]);
 if (ret)
  return ret;
 incl_3d_adjust_channel_bit_mask(&channels[CHANNEL_SCAN_INDEX_X],
    st->incl[CHANNEL_SCAN_INDEX_X].size);

 ret = sensor_hub_input_get_attribute_info(hsdev,
    HID_INPUT_REPORT,
    usage_id,
    HID_USAGE_SENSOR_ORIENT_TILT_Y,
    &st->incl[CHANNEL_SCAN_INDEX_Y]);
 if (ret)
  return ret;
 incl_3d_adjust_channel_bit_mask(&channels[CHANNEL_SCAN_INDEX_Y],
    st->incl[CHANNEL_SCAN_INDEX_Y].size);

 ret = sensor_hub_input_get_attribute_info(hsdev,
    HID_INPUT_REPORT,
    usage_id,
    HID_USAGE_SENSOR_ORIENT_TILT_Z,
    &st->incl[CHANNEL_SCAN_INDEX_Z]);
 if (ret)
  return ret;
 incl_3d_adjust_channel_bit_mask(&channels[CHANNEL_SCAN_INDEX_Z],
    st->incl[CHANNEL_SCAN_INDEX_Z].size);

 dev_dbg(&pdev->dev, "incl_3d %x:%x, %x:%x, %x:%x\n",
   st->incl[0].index,
   st->incl[0].report_id,
   st->incl[1].index, st->incl[1].report_id,
   st->incl[2].index, st->incl[2].report_id);

 st->scale_precision = hid_sensor_format_scale(
    HID_USAGE_SENSOR_INCLINOMETER_3D,
    &st->incl[CHANNEL_SCAN_INDEX_X],
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
 return ret;
}
