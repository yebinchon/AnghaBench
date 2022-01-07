
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct TYPE_6__ {int hsdev; } ;
struct TYPE_5__ {int logical_minimum; int report_id; } ;
struct hid_humidity_state {int scale_pre_decml; int scale_post_decml; int scale_precision; int value_offset; TYPE_2__ common_attributes; TYPE_1__ humidity_attr; } ;


 int EINVAL ;
 int HID_USAGE_SENSOR_ATMOSPHERIC_HUMIDITY ;
 int HID_USAGE_SENSOR_HUMIDITY ;





 int IIO_HUMIDITYRELATIVE ;
 int IIO_VAL_INT ;
 int SENSOR_HUB_SYNC ;
 int hid_sensor_power_state (TYPE_2__*,int) ;
 int hid_sensor_read_raw_hyst_value (TYPE_2__*,int*,int*) ;
 int hid_sensor_read_samp_freq_value (TYPE_2__*,int*,int*) ;
 struct hid_humidity_state* iio_priv (struct iio_dev*) ;
 int sensor_hub_input_attr_get_raw_value (int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static int humidity_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct hid_humidity_state *humid_st = iio_priv(indio_dev);

 switch (mask) {
 case 130:
  if (chan->type != IIO_HUMIDITYRELATIVE)
   return -EINVAL;
  hid_sensor_power_state(&humid_st->common_attributes, 1);
  *val = sensor_hub_input_attr_get_raw_value(
    humid_st->common_attributes.hsdev,
    HID_USAGE_SENSOR_HUMIDITY,
    HID_USAGE_SENSOR_ATMOSPHERIC_HUMIDITY,
    humid_st->humidity_attr.report_id,
    SENSOR_HUB_SYNC,
    humid_st->humidity_attr.logical_minimum < 0);
  hid_sensor_power_state(&humid_st->common_attributes, 0);

  return IIO_VAL_INT;

 case 128:
  *val = humid_st->scale_pre_decml;
  *val2 = humid_st->scale_post_decml;

  return humid_st->scale_precision;

 case 131:
  *val = humid_st->value_offset;

  return IIO_VAL_INT;

 case 129:
  return hid_sensor_read_samp_freq_value(
    &humid_st->common_attributes, val, val2);

 case 132:
  return hid_sensor_read_raw_hyst_value(
    &humid_st->common_attributes, val, val2);

 default:
  return -EINVAL;
 }
}
