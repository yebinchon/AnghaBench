
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ channel; int address; } ;
struct da9150_gpadc {int dummy; } ;


 scalar_t__ DA9150_GPADC_CHAN_GPIOA ;
 scalar_t__ DA9150_GPADC_CHAN_TJUNC_OVP ;
 int EINVAL ;




 int da9150_gpadc_read_offset (scalar_t__,int*) ;
 int da9150_gpadc_read_processed (struct da9150_gpadc*,scalar_t__,int ,int*) ;
 int da9150_gpadc_read_scale (scalar_t__,int*,int*) ;
 struct da9150_gpadc* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int da9150_gpadc_read_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int *val, int *val2, long mask)
{
 struct da9150_gpadc *gpadc = iio_priv(indio_dev);

 if ((chan->channel < DA9150_GPADC_CHAN_GPIOA) ||
     (chan->channel > DA9150_GPADC_CHAN_TJUNC_OVP))
  return -EINVAL;

 switch (mask) {
 case 129:
 case 130:
  return da9150_gpadc_read_processed(gpadc, chan->channel,
         chan->address, val);
 case 128:
  return da9150_gpadc_read_scale(chan->channel, val, val2);
 case 131:
  return da9150_gpadc_read_offset(chan->channel, val);
 default:
  return -EINVAL;
 }
}
