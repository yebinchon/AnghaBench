
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29501_private {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;


 int ARRAY_SIZE (int**) ;
 int EINVAL ;
 scalar_t__ IIO_CURRENT ;
 int REG_DRIVER_RANGE ;
 int** isl29501_current_scale_table ;
 int isl29501_register_write (struct isl29501_private*,int ,int) ;

__attribute__((used)) static int isl29501_set_scale(struct isl29501_private *isl29501,
         const struct iio_chan_spec *chan,
         int val, int val2)
{
 int i;

 if (chan->type != IIO_CURRENT)
  return -EINVAL;

 for (i = 0; i < ARRAY_SIZE(isl29501_current_scale_table); i++) {
  if (isl29501_current_scale_table[i][0] == val &&
      isl29501_current_scale_table[i][1] == val2) {
   return isl29501_register_write(isl29501,
             REG_DRIVER_RANGE,
             i + 1);
  }
 }

 return -EINVAL;
}
