
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct dln2_adc {int sample_period; int trigger_chan; int mutex; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;

 int UINT_MAX ;
 int dev_warn (int *,char*) ;
 int dln2_adc_set_chan_period (struct dln2_adc*,int,int) ;
 struct dln2_adc* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dln2_adc_write_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int val,
         int val2,
         long mask)
{
 int ret;
 unsigned int microhertz;
 struct dln2_adc *dln2 = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  microhertz = 1000000 * val + val2;

  mutex_lock(&dln2->mutex);

  dln2->sample_period =
   microhertz ? 1000000000 / microhertz : UINT_MAX;
  if (dln2->sample_period > 65535) {
   dln2->sample_period = 65535;
   dev_warn(&dln2->pdev->dev,
     "clamping period to 65535ms\n");
  }
  if (dln2->trigger_chan != -1)
   ret = dln2_adc_set_chan_period(dln2,
    dln2->trigger_chan, dln2->sample_period);
  else
   ret = 0;

  mutex_unlock(&dln2->mutex);

  return ret;

 default:
  return -EINVAL;
 }
}
