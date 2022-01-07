
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ index; int report_id; int size; } ;
struct TYPE_3__ {TYPE_2__ sensitivity; } ;
struct prox_state {TYPE_1__ common_attributes; TYPE_2__ prox_attr; } ;
struct platform_device {int dev; } ;
struct iio_chan_spec {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;


 int CHANNEL_SCAN_INDEX_PRESENCE ;
 int HID_FEATURE_REPORT ;
 int HID_INPUT_REPORT ;
 int HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS ;
 int HID_USAGE_SENSOR_DATA_PRESENCE ;
 int HID_USAGE_SENSOR_HUMAN_PRESENCE ;
 int dev_dbg (int *,char*,scalar_t__,int ) ;
 int prox_adjust_channel_bit_mask (struct iio_chan_spec*,int ,int ) ;
 int sensor_hub_input_get_attribute_info (struct hid_sensor_hub_device*,int ,unsigned int,int,TYPE_2__*) ;

__attribute__((used)) static int prox_parse_report(struct platform_device *pdev,
    struct hid_sensor_hub_device *hsdev,
    struct iio_chan_spec *channels,
    unsigned usage_id,
    struct prox_state *st)
{
 int ret;

 ret = sensor_hub_input_get_attribute_info(hsdev, HID_INPUT_REPORT,
   usage_id,
   HID_USAGE_SENSOR_HUMAN_PRESENCE,
   &st->prox_attr);
 if (ret < 0)
  return ret;
 prox_adjust_channel_bit_mask(channels, CHANNEL_SCAN_INDEX_PRESENCE,
     st->prox_attr.size);

 dev_dbg(&pdev->dev, "prox %x:%x\n", st->prox_attr.index,
   st->prox_attr.report_id);


 if (st->common_attributes.sensitivity.index < 0) {
  sensor_hub_input_get_attribute_info(hsdev,
   HID_FEATURE_REPORT, usage_id,
   HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS |
   HID_USAGE_SENSOR_DATA_PRESENCE,
   &st->common_attributes.sensitivity);
  dev_dbg(&pdev->dev, "Sensitivity index:report %d:%d\n",
   st->common_attributes.sensitivity.index,
   st->common_attributes.sensitivity.report_id);
 }
 if (st->common_attributes.sensitivity.index < 0)
  sensor_hub_input_get_attribute_info(hsdev,
   HID_FEATURE_REPORT, usage_id,
   HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS |
   HID_USAGE_SENSOR_HUMAN_PRESENCE,
   &st->common_attributes.sensitivity);

 return ret;
}
