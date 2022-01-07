
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29501_private {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;





 int IIO_VAL_INT ;
 int REG_AMBIENT_LIGHT ;
 int REG_DISTANCE ;
 int REG_EMITTER_DAC ;
 int REG_PHASE ;
 int REG_TEMPERATURE ;
 int isl29501_register_read (struct isl29501_private*,int ,int*) ;

__attribute__((used)) static int isl29501_get_raw(struct isl29501_private *isl29501,
       const struct iio_chan_spec *chan,
       int *raw)
{
 int ret;

 switch (chan->type) {
 case 129:
  ret = isl29501_register_read(isl29501, REG_DISTANCE, raw);
  if (ret < 0)
   return ret;

  return IIO_VAL_INT;
 case 131:
  ret = isl29501_register_read(isl29501,
          REG_AMBIENT_LIGHT,
          raw);
  if (ret < 0)
   return ret;

  return IIO_VAL_INT;
 case 130:
  ret = isl29501_register_read(isl29501, REG_PHASE, raw);
  if (ret < 0)
   return ret;

  return IIO_VAL_INT;
 case 132:
  ret = isl29501_register_read(isl29501, REG_EMITTER_DAC, raw);
  if (ret < 0)
   return ret;

  return IIO_VAL_INT;
 case 128:
  ret = isl29501_register_read(isl29501, REG_TEMPERATURE, raw);
  if (ret < 0)
   return ret;

  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
