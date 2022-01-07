
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct stm32_adc {unsigned int num_conv; void* rx_buf_sz; } ;
struct iio_dev {int dummy; } ;


 int STM32_DMA_BUFFER_SIZE ;
 struct stm32_adc* iio_priv (struct iio_dev*) ;
 void* min (unsigned int,unsigned int) ;

__attribute__((used)) static int stm32_adc_set_watermark(struct iio_dev *indio_dev, unsigned int val)
{
 struct stm32_adc *adc = iio_priv(indio_dev);
 unsigned int watermark = STM32_DMA_BUFFER_SIZE / 2;
 unsigned int rx_buf_sz = STM32_DMA_BUFFER_SIZE;







 watermark = min(watermark, val * (unsigned)(sizeof(u16)));
 adc->rx_buf_sz = min(rx_buf_sz, watermark * 2 * adc->num_conv);

 return 0;
}
