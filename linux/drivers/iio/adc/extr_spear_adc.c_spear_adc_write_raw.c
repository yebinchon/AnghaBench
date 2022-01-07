
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear_adc_state {int dummy; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_SAMP_FREQ ;
 int SPEAR_ADC_CLK_MAX ;
 int SPEAR_ADC_CLK_MIN ;
 struct spear_adc_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spear_adc_set_clk (struct spear_adc_state*,int) ;

__attribute__((used)) static int spear_adc_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val,
          int val2,
          long mask)
{
 struct spear_adc_state *st = iio_priv(indio_dev);
 int ret = 0;

 if (mask != IIO_CHAN_INFO_SAMP_FREQ)
  return -EINVAL;

 mutex_lock(&indio_dev->mlock);

 if ((val < SPEAR_ADC_CLK_MIN) ||
     (val > SPEAR_ADC_CLK_MAX) ||
     (val2 != 0)) {
  ret = -EINVAL;
  goto out;
 }

 spear_adc_set_clk(st, val);

out:
 mutex_unlock(&indio_dev->mlock);
 return ret;
}
