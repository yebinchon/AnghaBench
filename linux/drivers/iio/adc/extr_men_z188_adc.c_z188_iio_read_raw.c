
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct z188_adc {int base; } ;
struct iio_dev {int dev; } ;
struct iio_chan_spec {int channel; } ;


 int ADC_DATA (int ) ;
 int ADC_OVR (int ) ;
 int EINVAL ;
 int EIO ;

 int IIO_VAL_INT ;
 int dev_info (int *,char*,int) ;
 struct z188_adc* iio_priv (struct iio_dev*) ;
 int readw (int ) ;

__attribute__((used)) static int z188_iio_read_raw(struct iio_dev *iio_dev,
   struct iio_chan_spec const *chan,
   int *val,
   int *val2,
   long info)
{
 struct z188_adc *adc = iio_priv(iio_dev);
 int ret;
 u16 tmp;

 switch (info) {
 case 128:
  tmp = readw(adc->base + chan->channel * 4);

  if (ADC_OVR(tmp)) {
   dev_info(&iio_dev->dev,
    "Oversampling error on ADC channel %d\n",
    chan->channel);
   return -EIO;
  }
  *val = ADC_DATA(tmp);
  ret = IIO_VAL_INT;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
