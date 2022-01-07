
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int hsdev; } ;
struct TYPE_9__ {int scale_pre_decml; int scale_post_decml; int scale_precision; int value_offset; } ;
struct TYPE_8__ {int scale_pre_decml; int scale_post_decml; int scale_precision; int value_offset; } ;
struct magn_3d_state {TYPE_4__ rot_attributes; TYPE_4__ magn_flux_attributes; TYPE_3__ rot_attr; TYPE_2__ magn_flux_attr; TYPE_1__* magn; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; int type; } ;
typedef int s32 ;
struct TYPE_7__ {int report_id; int logical_minimum; } ;


 int EINVAL ;
 int HID_USAGE_SENSOR_COMPASS_3D ;







 int IIO_VAL_INT ;
 int SENSOR_HUB_SYNC ;
 int hid_sensor_power_state (TYPE_4__*,int) ;
 int hid_sensor_read_raw_hyst_value (TYPE_4__*,int*,int*) ;
 int hid_sensor_read_samp_freq_value (TYPE_4__*,int*,int*) ;
 struct magn_3d_state* iio_priv (struct iio_dev*) ;
 int * magn_3d_addresses ;
 int sensor_hub_input_attr_get_raw_value (int ,int ,int ,int,int ,int) ;

__attribute__((used)) static int magn_3d_read_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int *val, int *val2,
         long mask)
{
 struct magn_3d_state *magn_state = iio_priv(indio_dev);
 int report_id = -1;
 u32 address;
 int ret_type;
 s32 min;

 *val = 0;
 *val2 = 0;
 switch (mask) {
 case 132:
  hid_sensor_power_state(&magn_state->magn_flux_attributes, 1);
  report_id = magn_state->magn[chan->address].report_id;
  min = magn_state->magn[chan->address].logical_minimum;
  address = magn_3d_addresses[chan->address];
  if (report_id >= 0)
   *val = sensor_hub_input_attr_get_raw_value(
    magn_state->magn_flux_attributes.hsdev,
    HID_USAGE_SENSOR_COMPASS_3D, address,
    report_id,
    SENSOR_HUB_SYNC,
    min < 0);
  else {
   *val = 0;
   hid_sensor_power_state(
    &magn_state->magn_flux_attributes,
    0);
   return -EINVAL;
  }
  hid_sensor_power_state(&magn_state->magn_flux_attributes,
     0);
  ret_type = IIO_VAL_INT;
  break;
 case 130:
  switch (chan->type) {
  case 129:
   *val = magn_state->magn_flux_attr.scale_pre_decml;
   *val2 = magn_state->magn_flux_attr.scale_post_decml;
   ret_type = magn_state->magn_flux_attr.scale_precision;
   break;
  case 128:
   *val = magn_state->rot_attr.scale_pre_decml;
   *val2 = magn_state->rot_attr.scale_post_decml;
   ret_type = magn_state->rot_attr.scale_precision;
   break;
  default:
   ret_type = -EINVAL;
  }
  break;
 case 133:
  switch (chan->type) {
  case 129:
   *val = magn_state->magn_flux_attr.value_offset;
   ret_type = IIO_VAL_INT;
   break;
  case 128:
   *val = magn_state->rot_attr.value_offset;
   ret_type = IIO_VAL_INT;
   break;
  default:
   ret_type = -EINVAL;
  }
  break;
 case 131:
  ret_type = hid_sensor_read_samp_freq_value(
   &magn_state->magn_flux_attributes, val, val2);
  break;
 case 134:
  switch (chan->type) {
  case 129:
   ret_type = hid_sensor_read_raw_hyst_value(
    &magn_state->magn_flux_attributes, val, val2);
   break;
  case 128:
   ret_type = hid_sensor_read_raw_hyst_value(
    &magn_state->rot_attributes, val, val2);
   break;
  default:
   ret_type = -EINVAL;
  }
  break;
 default:
  ret_type = -EINVAL;
  break;
 }

 return ret_type;
}
