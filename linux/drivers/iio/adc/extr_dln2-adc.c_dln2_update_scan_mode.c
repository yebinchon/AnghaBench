
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int num_channels; } ;
struct dln2_adc {int mutex; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int dev_err (int *,char*,int) ;
 int dln2_adc_set_chan_enabled (struct dln2_adc*,int,int) ;
 int dln2_adc_update_demux (struct dln2_adc*) ;
 struct dln2_adc* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int,unsigned long const*) ;

__attribute__((used)) static int dln2_update_scan_mode(struct iio_dev *indio_dev,
     const unsigned long *scan_mask)
{
 struct dln2_adc *dln2 = iio_priv(indio_dev);
 int chan_count = indio_dev->num_channels - 1;
 int ret, i, j;

 mutex_lock(&dln2->mutex);

 for (i = 0; i < chan_count; ++i) {
  ret = dln2_adc_set_chan_enabled(dln2, i,
      test_bit(i, scan_mask));
  if (ret < 0) {
   for (j = 0; j < i; ++j)
    dln2_adc_set_chan_enabled(dln2, j, 0);
   mutex_unlock(&dln2->mutex);
   dev_err(&dln2->pdev->dev,
    "Unable to enable ADC channel %d\n", i);
   return -EBUSY;
  }
 }

 dln2_adc_update_demux(dln2);

 mutex_unlock(&dln2->mutex);

 return 0;
}
