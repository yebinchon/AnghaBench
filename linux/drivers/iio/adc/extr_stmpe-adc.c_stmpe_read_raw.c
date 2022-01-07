
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmpe_adc {TYPE_1__* stmpe; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct TYPE_2__ {int mod_12b; } ;


 int EINVAL ;




 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;

 struct stmpe_adc* iio_priv (struct iio_dev*) ;
 long stmpe_read_temp (struct stmpe_adc*,struct iio_chan_spec const*,int*) ;
 long stmpe_read_voltage (struct stmpe_adc*,struct iio_chan_spec const*,int*) ;

__attribute__((used)) static int stmpe_read_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int *val,
     int *val2,
     long mask)
{
 struct stmpe_adc *info = iio_priv(indio_dev);
 long ret;

 switch (mask) {
 case 131:
 case 132:

  switch (chan->type) {
  case 128:
   ret = stmpe_read_voltage(info, chan, val);
   break;

  case 129:
   ret = stmpe_read_temp(info, chan, val);
   break;
  default:
   return -EINVAL;
  }

  if (ret < 0)
   return ret;

  return IIO_VAL_INT;

 case 130:
  *val = 3300;
  *val2 = info->stmpe->mod_12b ? 12 : 10;
  return IIO_VAL_FRACTIONAL_LOG2;

 default:
  break;
 }

 return -EINVAL;
}
