
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int hsdev; } ;
struct TYPE_5__ {int report_id; int units; int unit_expo; int logical_minimum; } ;
struct prox_state {TYPE_2__ common_attributes; TYPE_1__ prox_attr; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int scan_index; } ;
typedef int s32 ;



 int EINVAL ;
 int HID_USAGE_SENSOR_HUMAN_PRESENCE ;
 int HID_USAGE_SENSOR_PROX ;





 int IIO_VAL_INT ;
 int SENSOR_HUB_SYNC ;
 int hid_sensor_convert_exponent (int ) ;
 int hid_sensor_power_state (TYPE_2__*,int) ;
 int hid_sensor_read_raw_hyst_value (TYPE_2__*,int*,int*) ;
 int hid_sensor_read_samp_freq_value (TYPE_2__*,int*,int*) ;
 struct prox_state* iio_priv (struct iio_dev*) ;
 int sensor_hub_input_attr_get_raw_value (int ,int ,int ,int,int ,int) ;

__attribute__((used)) static int prox_read_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int *val, int *val2,
         long mask)
{
 struct prox_state *prox_state = iio_priv(indio_dev);
 int report_id = -1;
 u32 address;
 int ret_type;
 s32 min;

 *val = 0;
 *val2 = 0;
 switch (mask) {
 case 130:
  switch (chan->scan_index) {
  case 133:
   report_id = prox_state->prox_attr.report_id;
   min = prox_state->prox_attr.logical_minimum;
   address = HID_USAGE_SENSOR_HUMAN_PRESENCE;
   break;
  default:
   report_id = -1;
   break;
  }
  if (report_id >= 0) {
   hid_sensor_power_state(&prox_state->common_attributes,
      1);
   *val = sensor_hub_input_attr_get_raw_value(
    prox_state->common_attributes.hsdev,
    HID_USAGE_SENSOR_PROX, address,
    report_id,
    SENSOR_HUB_SYNC,
    min < 0);
   hid_sensor_power_state(&prox_state->common_attributes,
      0);
  } else {
   *val = 0;
   return -EINVAL;
  }
  ret_type = IIO_VAL_INT;
  break;
 case 128:
  *val = prox_state->prox_attr.units;
  ret_type = IIO_VAL_INT;
  break;
 case 131:
  *val = hid_sensor_convert_exponent(
    prox_state->prox_attr.unit_expo);
  ret_type = IIO_VAL_INT;
  break;
 case 129:
  ret_type = hid_sensor_read_samp_freq_value(
    &prox_state->common_attributes, val, val2);
  break;
 case 132:
  ret_type = hid_sensor_read_raw_hyst_value(
    &prox_state->common_attributes, val, val2);
  break;
 default:
  ret_type = -EINVAL;
  break;
 }

 return ret_type;
}
