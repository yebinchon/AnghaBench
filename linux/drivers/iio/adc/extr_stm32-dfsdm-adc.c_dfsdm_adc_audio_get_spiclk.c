
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dfsdm_adc {int spi_freq; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct stm32_dfsdm_adc* iio_priv (struct iio_dev*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t dfsdm_adc_audio_get_spiclk(struct iio_dev *indio_dev,
       uintptr_t priv,
       const struct iio_chan_spec *chan,
       char *buf)
{
 struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);

 return snprintf(buf, PAGE_SIZE, "%d\n", adc->spi_freq);
}
