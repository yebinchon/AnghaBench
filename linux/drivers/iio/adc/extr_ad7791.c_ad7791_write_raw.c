
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ad7791_state {int filter; int sd; } ;


 int AD7791_FILTER_RATE_MASK ;
 int AD7791_REG_FILTER ;
 int ARRAY_SIZE (int**) ;
 int EINVAL ;

 int** ad7791_sample_freq_avail ;
 int ad_sd_write_reg (int *,int ,int,int) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct ad7791_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7791_write_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int val, int val2, long mask)
{
 struct ad7791_state *st = iio_priv(indio_dev);
 int ret, i;

 ret = iio_device_claim_direct_mode(indio_dev);
 if (ret)
  return ret;

 switch (mask) {
 case 128:
  for (i = 0; i < ARRAY_SIZE(ad7791_sample_freq_avail); i++) {
   if (ad7791_sample_freq_avail[i][0] == val &&
       ad7791_sample_freq_avail[i][1] == val2)
    break;
  }

  if (i == ARRAY_SIZE(ad7791_sample_freq_avail)) {
   ret = -EINVAL;
   break;
  }

  st->filter &= ~AD7791_FILTER_RATE_MASK;
  st->filter |= i;
  ad_sd_write_reg(&st->sd, AD7791_REG_FILTER,
    sizeof(st->filter),
    st->filter);
  break;
 default:
  ret = -EINVAL;
 }

 iio_device_release_direct_mode(indio_dev);
 return ret;
}
