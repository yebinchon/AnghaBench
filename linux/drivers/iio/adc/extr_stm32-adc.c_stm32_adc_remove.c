
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stm32_adc {TYPE_2__* dma_chan; int rx_dma_buf; int rx_buf; } ;
struct platform_device {int dev; } ;
struct iio_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int dev; } ;


 int STM32_DMA_BUFFER_SIZE ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int dma_release_channel (TYPE_2__*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct iio_dev* iio_priv_to_dev (struct stm32_adc*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 struct stm32_adc* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int stm32_adc_hw_stop (int *) ;

__attribute__((used)) static int stm32_adc_remove(struct platform_device *pdev)
{
 struct stm32_adc *adc = platform_get_drvdata(pdev);
 struct iio_dev *indio_dev = iio_priv_to_dev(adc);

 pm_runtime_get_sync(&pdev->dev);
 iio_device_unregister(indio_dev);
 stm32_adc_hw_stop(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 pm_runtime_set_suspended(&pdev->dev);
 pm_runtime_put_noidle(&pdev->dev);
 iio_triggered_buffer_cleanup(indio_dev);
 if (adc->dma_chan) {
  dma_free_coherent(adc->dma_chan->device->dev,
      STM32_DMA_BUFFER_SIZE,
      adc->rx_buf, adc->rx_dma_buf);
  dma_release_channel(adc->dma_chan);
 }

 return 0;
}
