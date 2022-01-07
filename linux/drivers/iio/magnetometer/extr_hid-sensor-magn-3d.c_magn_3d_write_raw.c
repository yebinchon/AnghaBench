
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magn_3d_state {int rot_attributes; int magn_flux_attributes; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;




 int hid_sensor_write_raw_hyst_value (int *,int,int) ;
 int hid_sensor_write_samp_freq_value (int *,int,int) ;
 struct magn_3d_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int magn_3d_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val,
          int val2,
          long mask)
{
 struct magn_3d_state *magn_state = iio_priv(indio_dev);
 int ret = 0;

 switch (mask) {
 case 130:
  ret = hid_sensor_write_samp_freq_value(
    &magn_state->magn_flux_attributes, val, val2);
  break;
 case 131:
  switch (chan->type) {
  case 129:
   ret = hid_sensor_write_raw_hyst_value(
    &magn_state->magn_flux_attributes, val, val2);
   break;
  case 128:
   ret = hid_sensor_write_raw_hyst_value(
    &magn_state->rot_attributes, val, val2);
   break;
  default:
   ret = -EINVAL;
  }
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
