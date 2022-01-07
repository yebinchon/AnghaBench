
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dfsdm_adc {unsigned int sample_freq; unsigned int oversamp; } ;
struct iio_dev {int dev; } ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 int dev_dbg (int *,char*,unsigned int,unsigned int) ;
 struct stm32_dfsdm_adc* iio_priv (struct iio_dev*) ;
 int stm32_dfsdm_compute_all_osrs (struct iio_dev*,unsigned int) ;

__attribute__((used)) static int dfsdm_adc_set_samp_freq(struct iio_dev *indio_dev,
       unsigned int sample_freq,
       unsigned int spi_freq)
{
 struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
 unsigned int oversamp;
 int ret;

 oversamp = DIV_ROUND_CLOSEST(spi_freq, sample_freq);
 if (spi_freq % sample_freq)
  dev_dbg(&indio_dev->dev,
   "Rate not accurate. requested (%u), actual (%u)\n",
   sample_freq, spi_freq / oversamp);

 ret = stm32_dfsdm_compute_all_osrs(indio_dev, oversamp);
 if (ret < 0)
  return ret;

 adc->sample_freq = spi_freq / oversamp;
 adc->oversamp = oversamp;

 return 0;
}
