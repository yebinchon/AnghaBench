
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int trig; } ;


 int iio_trigger_poll_chained (int ) ;

__attribute__((used)) static void stm32_adc_dma_buffer_done(void *data)
{
 struct iio_dev *indio_dev = data;

 iio_trigger_poll_chained(indio_dev->trig);
}
