
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int address; } ;
struct adxl372_state {size_t odr; size_t bw; } ;


 int ADXL372_USCALE ;
 int EINVAL ;




 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int* adxl372_bw_freq_tbl ;
 int adxl372_read_axis (struct adxl372_state*,int ) ;
 int* adxl372_samp_freq_tbl ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct adxl372_state* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int,int ) ;

__attribute__((used)) static int adxl372_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long info)
{
 struct adxl372_state *st = iio_priv(indio_dev);
 int ret;

 switch (info) {
 case 130:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;

  ret = adxl372_read_axis(st, chan->address);
  iio_device_release_direct_mode(indio_dev);
  if (ret < 0)
   return ret;

  *val = sign_extend32(ret >> chan->scan_type.shift,
         chan->scan_type.realbits - 1);
  return IIO_VAL_INT;
 case 128:
  *val = 0;
  *val2 = ADXL372_USCALE;
  return IIO_VAL_INT_PLUS_MICRO;
 case 129:
  *val = adxl372_samp_freq_tbl[st->odr];
  return IIO_VAL_INT;
 case 131:
  *val = adxl372_bw_freq_tbl[st->bw];
  return IIO_VAL_INT;
 }

 return -EINVAL;
}
