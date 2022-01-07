
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29501_private {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;


 int REG_DISTANCE_BIAS ;
 int REG_TEMPERATURE_BIAS ;
 int isl29501_register_read (struct isl29501_private*,int ,int*) ;

__attribute__((used)) static int isl29501_get_calibbias(struct isl29501_private *isl29501,
      const struct iio_chan_spec *chan,
      int *bias)
{
 switch (chan->type) {
 case 129:
  return isl29501_register_read(isl29501,
           REG_DISTANCE_BIAS,
           bias);
 case 128:
  return isl29501_register_read(isl29501,
           REG_TEMPERATURE_BIAS,
           bias);
 default:
  return -EINVAL;
 }
}
