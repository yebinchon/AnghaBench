
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stm32_adc {scalar_t__ dma_chan; TYPE_1__* cfg; } ;
struct TYPE_4__ {struct device* parent; } ;
struct iio_dev {TYPE_2__ dev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int (* stop_conv ) (struct stm32_adc*) ;} ;


 int dev_err (TYPE_2__*,char*) ;
 int dmaengine_terminate_sync (scalar_t__) ;
 struct stm32_adc* iio_priv (struct iio_dev*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int stm32_adc_conv_irq_disable (struct stm32_adc*) ;
 scalar_t__ stm32_adc_set_trig (struct iio_dev*,int *) ;
 int stub1 (struct stm32_adc*) ;

__attribute__((used)) static void __stm32_adc_buffer_predisable(struct iio_dev *indio_dev)
{
 struct stm32_adc *adc = iio_priv(indio_dev);
 struct device *dev = indio_dev->dev.parent;

 adc->cfg->stop_conv(adc);
 if (!adc->dma_chan)
  stm32_adc_conv_irq_disable(adc);

 if (adc->dma_chan)
  dmaengine_terminate_sync(adc->dma_chan);

 if (stm32_adc_set_trig(indio_dev, ((void*)0)))
  dev_err(&indio_dev->dev, "Can't clear trigger\n");

 pm_runtime_mark_last_busy(dev);
 pm_runtime_put_autosuspend(dev);
}
