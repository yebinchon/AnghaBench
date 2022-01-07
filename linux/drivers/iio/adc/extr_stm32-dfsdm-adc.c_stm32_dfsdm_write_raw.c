
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_dfsdm_channel {int src; } ;
struct stm32_dfsdm_adc {int oversamp; unsigned int spi_freq; TYPE_1__* dfsdm; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct TYPE_2__ {unsigned int spi_master_freq; struct stm32_dfsdm_channel* ch_list; } ;





 int EINVAL ;


 int dfsdm_adc_set_samp_freq (struct iio_dev*,int,unsigned int) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct stm32_dfsdm_adc* iio_priv (struct iio_dev*) ;
 int stm32_dfsdm_compute_all_osrs (struct iio_dev*,int) ;

__attribute__((used)) static int stm32_dfsdm_write_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int val, int val2, long mask)
{
 struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
 struct stm32_dfsdm_channel *ch = &adc->dfsdm->ch_list[chan->channel];
 unsigned int spi_freq;
 int ret = -EINVAL;

 switch (mask) {
 case 129:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;
  ret = stm32_dfsdm_compute_all_osrs(indio_dev, val);
  if (!ret)
   adc->oversamp = val;
  iio_device_release_direct_mode(indio_dev);
  return ret;

 case 128:
  if (!val)
   return -EINVAL;

  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;

  switch (ch->src) {
  case 132:
   spi_freq = adc->dfsdm->spi_master_freq;
   break;
  case 131:
  case 130:
   spi_freq = adc->dfsdm->spi_master_freq / 2;
   break;
  default:
   spi_freq = adc->spi_freq;
  }

  ret = dfsdm_adc_set_samp_freq(indio_dev, val, spi_freq);
  iio_device_release_direct_mode(indio_dev);
  return ret;
 }

 return -EINVAL;
}
