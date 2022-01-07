
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; size_t scan_index; } ;
struct adis {int dummy; } ;


 int EINVAL ;
 int GENMASK (int,int ) ;

 long IIO_CHAN_INFO_CALIBBIAS ;

 int ** adis16209_addresses ;
 int adis_write_reg_16 (struct adis*,int ,int) ;
 struct adis* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adis16209_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val,
          int val2,
          long mask)
{
 struct adis *st = iio_priv(indio_dev);
 int m;

 if (mask != IIO_CHAN_INFO_CALIBBIAS)
  return -EINVAL;

 switch (chan->type) {
 case 129:
 case 128:
  m = GENMASK(13, 0);
  break;
 default:
  return -EINVAL;
 }

 return adis_write_reg_16(st, adis16209_addresses[chan->scan_index][0],
     val & m);
}
