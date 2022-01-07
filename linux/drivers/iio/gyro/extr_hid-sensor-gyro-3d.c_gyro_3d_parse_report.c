
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
struct gyro_3d_state {TYPE_1__ common_attributes; int scale_post_decml; int scale_pre_decml; TYPE_2__* gyro; int scale_precision; } ;


 int CHANNEL_SCAN_INDEX_X ;
 int CHANNEL_SCAN_INDEX_Z ;
 int HID_FEATURE_REPORT ;
 int HID_INPUT_REPORT ;
 int HID_USAGE_SENSOR_ANGL_VELOCITY_X_AXIS ;
 int HID_USAGE_SENSOR_DATA_ANGL_VELOCITY ;
 int HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS ;
 int HID_USAGE_SENSOR_GYRO_3D ;
 int dev_dbg (int *,char*,scalar_t__,int ,...) ;
 int gyro_3d_adjust_channel_bit_mask (struct iio_chan_spec*,int,int ) ;
 int hid_sensor_format_scale (int ,TYPE_2__*,int *,int *) ;
 int sensor_hub_input_get_attribute_info (struct hid_sensor_hub_device*,int ,unsigned int,int,TYPE_2__*) ;

__attribute__((used)) static int gyro_3d_parse_report(struct platform_device *pdev,
    struct hid_sensor_hub_device *hsdev,
    struct iio_chan_spec *channels,
    unsigned usage_id,
    struct gyro_3d_state *st)
{
 int ret;
 int i;

 for (i = 0; i <= CHANNEL_SCAN_INDEX_Z; ++i) {
  ret = sensor_hub_input_get_attribute_info(hsdev,
    HID_INPUT_REPORT,
    usage_id,
    HID_USAGE_SENSOR_ANGL_VELOCITY_X_AXIS + i,
    &st->gyro[CHANNEL_SCAN_INDEX_X + i]);
  if (ret < 0)
   break;
  gyro_3d_adjust_channel_bit_mask(channels,
    CHANNEL_SCAN_INDEX_X + i,
    st->gyro[CHANNEL_SCAN_INDEX_X + i].size);
 }
 dev_dbg(&pdev->dev, "gyro_3d %x:%x, %x:%x, %x:%x\n",
   st->gyro[0].index,
   st->gyro[0].report_id,
   st->gyro[1].index, st->gyro[1].report_id,
   st->gyro[2].index, st->gyro[2].report_id);

 st->scale_precision = hid_sensor_format_scale(
    HID_USAGE_SENSOR_GYRO_3D,
    &st->gyro[CHANNEL_SCAN_INDEX_X],
    &st->scale_pre_decml, &st->scale_post_decml);


 if (st->common_attributes.sensitivity.index < 0) {
  sensor_hub_input_get_attribute_info(hsdev,
   HID_FEATURE_REPORT, usage_id,
   HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS |
   HID_USAGE_SENSOR_DATA_ANGL_VELOCITY,
   &st->common_attributes.sensitivity);
  dev_dbg(&pdev->dev, "Sensitivity index:report %d:%d\n",
   st->common_attributes.sensitivity.index,
   st->common_attributes.sensitivity.report_id);
 }
 return ret;
}
