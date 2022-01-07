
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct dev_rot_state {int common_attributes; } ;


 int EINVAL ;


 int hid_sensor_write_raw_hyst_value (int *,int,int) ;
 int hid_sensor_write_samp_freq_value (int *,int,int) ;
 struct dev_rot_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int dev_rot_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val,
          int val2,
          long mask)
{
 struct dev_rot_state *rot_state = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  ret = hid_sensor_write_samp_freq_value(
    &rot_state->common_attributes, val, val2);
  break;
 case 129:
  ret = hid_sensor_write_raw_hyst_value(
    &rot_state->common_attributes, val, val2);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
