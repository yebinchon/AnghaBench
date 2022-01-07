
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int channel; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;

 int iproc_adc_do_read (struct iio_dev*,int ,int*) ;

__attribute__((used)) static int iproc_adc_read_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int *val,
     int *val2,
     long mask)
{
 u16 adc_data;
 int err;

 switch (mask) {
 case 130:
  err = iproc_adc_do_read(indio_dev, chan->channel, &adc_data);
  if (err < 0)
   return err;
  *val = adc_data;
  return IIO_VAL_INT;
 case 129:
  switch (chan->type) {
  case 128:
   *val = 1800;
   *val2 = 10;
   return IIO_VAL_FRACTIONAL_LOG2;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
