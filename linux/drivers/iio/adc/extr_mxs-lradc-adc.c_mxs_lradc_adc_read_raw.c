
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxs_lradc_adc {int* vref_mv; int is_divided; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {size_t channel; int type; TYPE_1__ scan_type; } ;


 int EINVAL ;



 int IIO_TEMP ;
 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct mxs_lradc_adc* iio_priv (struct iio_dev*) ;
 int mxs_lradc_adc_read_single (struct iio_dev*,size_t,int*) ;
 int mxs_lradc_adc_read_temp (struct iio_dev*,int*) ;
 int test_bit (size_t,int *) ;

__attribute__((used)) static int mxs_lradc_adc_read_raw(struct iio_dev *iio_dev,
         const struct iio_chan_spec *chan,
         int *val, int *val2, long m)
{
 struct mxs_lradc_adc *adc = iio_priv(iio_dev);

 switch (m) {
 case 129:
  if (chan->type == IIO_TEMP)
   return mxs_lradc_adc_read_temp(iio_dev, val);

  return mxs_lradc_adc_read_single(iio_dev, chan->channel, val);

 case 128:
  if (chan->type == IIO_TEMP) {




   *val = 0;
   *val2 = 253000;
   return IIO_VAL_INT_PLUS_MICRO;
  }

  *val = adc->vref_mv[chan->channel];
  *val2 = chan->scan_type.realbits -
   test_bit(chan->channel, &adc->is_divided);
  return IIO_VAL_FRACTIONAL_LOG2;

 case 130:
  if (chan->type == IIO_TEMP) {






   *val = -1079;
   *val2 = 644268;

   return IIO_VAL_INT_PLUS_MICRO;
  }

  return -EINVAL;

 default:
  break;
 }

 return -EINVAL;
}
