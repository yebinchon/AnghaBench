
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_adc {int num_conv; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int masklength; TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int bitmap_weight (unsigned long const*,int ) ;
 struct stm32_adc* iio_priv (struct iio_dev*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int stm32_adc_conf_scan_seq (struct iio_dev*,unsigned long const*) ;

__attribute__((used)) static int stm32_adc_update_scan_mode(struct iio_dev *indio_dev,
          const unsigned long *scan_mask)
{
 struct stm32_adc *adc = iio_priv(indio_dev);
 struct device *dev = indio_dev->dev.parent;
 int ret;

 ret = pm_runtime_get_sync(dev);
 if (ret < 0) {
  pm_runtime_put_noidle(dev);
  return ret;
 }

 adc->num_conv = bitmap_weight(scan_mask, indio_dev->masklength);

 ret = stm32_adc_conf_scan_seq(indio_dev, scan_mask);
 pm_runtime_mark_last_busy(dev);
 pm_runtime_put_autosuspend(dev);

 return ret;
}
