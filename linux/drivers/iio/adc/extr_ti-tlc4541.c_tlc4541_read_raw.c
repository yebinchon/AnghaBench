
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tlc4541_state {int * rx_buf; int scan_single_msg; int spi; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;


 int EINVAL ;
 int GENMASK (int ,int ) ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int be16_to_cpu (int ) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct tlc4541_state* iio_priv (struct iio_dev*) ;
 int spi_sync (int ,int *) ;
 int tlc4541_get_range (struct tlc4541_state*) ;

__attribute__((used)) static int tlc4541_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val,
       int *val2,
       long m)
{
 int ret = 0;
 struct tlc4541_state *st = iio_priv(indio_dev);

 switch (m) {
 case 129:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;
  ret = spi_sync(st->spi, &st->scan_single_msg);
  iio_device_release_direct_mode(indio_dev);
  if (ret < 0)
   return ret;
  *val = be16_to_cpu(st->rx_buf[0]);
  *val = *val >> chan->scan_type.shift;
  *val &= GENMASK(chan->scan_type.realbits - 1, 0);
  return IIO_VAL_INT;
 case 128:
  ret = tlc4541_get_range(st);
  if (ret < 0)
   return ret;
  *val = ret;
  *val2 = chan->scan_type.realbits;
  return IIO_VAL_FRACTIONAL_LOG2;
 }
 return -EINVAL;
}
