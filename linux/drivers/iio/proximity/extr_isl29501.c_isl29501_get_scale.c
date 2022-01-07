
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isl29501_private {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int ARRAY_SIZE (int**) ;
 int EINVAL ;





 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;
 int REG_DRIVER_RANGE ;
 int** isl29501_current_scale_table ;
 int isl29501_register_read (struct isl29501_private*,int ,int *) ;

__attribute__((used)) static int isl29501_get_scale(struct isl29501_private *isl29501,
         const struct iio_chan_spec *chan,
         int *val, int *val2)
{
 int ret;
 u32 current_scale;

 switch (chan->type) {
 case 129:

  *val = 3331;
  *val2 = 6553600;

  return IIO_VAL_FRACTIONAL;
 case 130:

  *val = 0;
  *val2 = 95874;

  return IIO_VAL_INT_PLUS_NANO;
 case 131:

  *val = 35;
  *val2 = 10000;

  return IIO_VAL_FRACTIONAL;
 case 132:
  ret = isl29501_register_read(isl29501,
          REG_DRIVER_RANGE,
          &current_scale);
  if (ret < 0)
   return ret;

  if (current_scale > ARRAY_SIZE(isl29501_current_scale_table))
   return -EINVAL;

  if (!current_scale) {
   *val = 0;
   *val2 = 0;
   return IIO_VAL_INT;
  }

  *val = isl29501_current_scale_table[current_scale - 1][0];
  *val2 = isl29501_current_scale_table[current_scale - 1][1];

  return IIO_VAL_INT_PLUS_MICRO;
 case 128:

  *val = 125;
  *val2 = 100000;

  return IIO_VAL_FRACTIONAL;
 default:
  return -EINVAL;
 }
}
