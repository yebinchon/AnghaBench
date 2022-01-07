
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct dev_rot_state {int* sampled_vals; int scale_pre_decml; int scale_post_decml; int scale_precision; int value_offset; int common_attributes; } ;


 int EINVAL ;





 int IIO_VAL_INT ;
 int IIO_VAL_INT_MULTIPLE ;
 int hid_sensor_read_raw_hyst_value (int *,int*,int*) ;
 int hid_sensor_read_samp_freq_value (int *,int*,int*) ;
 struct dev_rot_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int dev_rot_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int size, int *vals, int *val_len,
    long mask)
{
 struct dev_rot_state *rot_state = iio_priv(indio_dev);
 int ret_type;
 int i;

 vals[0] = 0;
 vals[1] = 0;

 switch (mask) {
 case 130:
  if (size >= 4) {
   for (i = 0; i < 4; ++i)
    vals[i] = rot_state->sampled_vals[i];
   ret_type = IIO_VAL_INT_MULTIPLE;
   *val_len = 4;
  } else
   ret_type = -EINVAL;
  break;
 case 128:
  vals[0] = rot_state->scale_pre_decml;
  vals[1] = rot_state->scale_post_decml;
  return rot_state->scale_precision;

 case 131:
  *vals = rot_state->value_offset;
  return IIO_VAL_INT;

 case 129:
  ret_type = hid_sensor_read_samp_freq_value(
   &rot_state->common_attributes, &vals[0], &vals[1]);
  break;
 case 132:
  ret_type = hid_sensor_read_raw_hyst_value(
   &rot_state->common_attributes, &vals[0], &vals[1]);
  break;
 default:
  ret_type = -EINVAL;
  break;
 }

 return ret_type;
}
