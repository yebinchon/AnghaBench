
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int channel; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_NANO ;
 int IIO_VOLTAGE ;
 int sun4i_gpadc_adc_read (struct iio_dev*,int ,int*) ;
 int sun4i_gpadc_temp_offset (struct iio_dev*,int*) ;
 int sun4i_gpadc_temp_read (struct iio_dev*,int*) ;
 int sun4i_gpadc_temp_scale (struct iio_dev*,int*) ;

__attribute__((used)) static int sun4i_gpadc_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan, int *val,
    int *val2, long mask)
{
 int ret;

 switch (mask) {
 case 130:
  ret = sun4i_gpadc_temp_offset(indio_dev, val);
  if (ret)
   return ret;

  return IIO_VAL_INT;
 case 129:
  if (chan->type == IIO_VOLTAGE)
   ret = sun4i_gpadc_adc_read(indio_dev, chan->channel,
         val);
  else
   ret = sun4i_gpadc_temp_read(indio_dev, val);

  if (ret)
   return ret;

  return IIO_VAL_INT;
 case 128:
  if (chan->type == IIO_VOLTAGE) {

   *val = 0;
   *val2 = 732421875;
   return IIO_VAL_INT_PLUS_NANO;
  }

  ret = sun4i_gpadc_temp_scale(indio_dev, val);
  if (ret)
   return ret;

  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
