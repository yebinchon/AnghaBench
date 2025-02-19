
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_adc {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 struct stm32_adc* iio_priv (struct iio_dev*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 unsigned int stm32_adc_readl (struct stm32_adc*,unsigned int) ;
 int stm32_adc_writel (struct stm32_adc*,unsigned int,unsigned int) ;

__attribute__((used)) static int stm32_adc_debugfs_reg_access(struct iio_dev *indio_dev,
     unsigned reg, unsigned writeval,
     unsigned *readval)
{
 struct stm32_adc *adc = iio_priv(indio_dev);
 struct device *dev = indio_dev->dev.parent;
 int ret;

 ret = pm_runtime_get_sync(dev);
 if (ret < 0) {
  pm_runtime_put_noidle(dev);
  return ret;
 }

 if (!readval)
  stm32_adc_writel(adc, reg, writeval);
 else
  *readval = stm32_adc_readl(adc, reg);

 pm_runtime_mark_last_busy(dev);
 pm_runtime_put_autosuspend(dev);

 return 0;
}
