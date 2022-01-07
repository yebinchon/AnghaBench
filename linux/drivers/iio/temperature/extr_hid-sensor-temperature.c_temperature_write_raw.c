
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temperature_state {int common_attributes; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;


 int hid_sensor_write_raw_hyst_value (int *,int,int) ;
 int hid_sensor_write_samp_freq_value (int *,int,int) ;
 struct temperature_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int temperature_write_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int val, int val2, long mask)
{
 struct temperature_state *temp_st = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  return hid_sensor_write_samp_freq_value(
    &temp_st->common_attributes, val, val2);
 case 129:
  return hid_sensor_write_raw_hyst_value(
    &temp_st->common_attributes, val, val2);
 default:
  return -EINVAL;
 }
}
