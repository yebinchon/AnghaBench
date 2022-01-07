
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct hid_humidity_state {int common_attributes; } ;


 int EINVAL ;


 int hid_sensor_write_raw_hyst_value (int *,int,int) ;
 int hid_sensor_write_samp_freq_value (int *,int,int) ;
 struct hid_humidity_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int humidity_write_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int val, int val2, long mask)
{
 struct hid_humidity_state *humid_st = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  return hid_sensor_write_samp_freq_value(
    &humid_st->common_attributes, val, val2);

 case 129:
  return hid_sensor_write_raw_hyst_value(
    &humid_st->common_attributes, val, val2);

 default:
  return -EINVAL;
 }
}
