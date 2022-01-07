
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_dfsdm_channel {scalar_t__ src; } ;
struct stm32_dfsdm_adc {TYPE_1__* dfsdm; int spi_freq; } ;
struct iio_dev {int num_channels; struct iio_chan_spec* channels; int dev; } ;
struct iio_chan_spec {size_t channel; int info_mask_separate; scalar_t__ scan_index; } ;
struct TYPE_2__ {int spi_master_freq; struct stm32_dfsdm_channel* ch_list; } ;


 int BIT (int ) ;
 scalar_t__ DFSDM_CHANNEL_SPI_CLOCK_EXTERNAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IIO_CHAN_INFO_SAMP_FREQ ;
 int dev_err (int *,char*) ;
 struct iio_chan_spec* devm_kzalloc (int *,int,int ) ;
 struct stm32_dfsdm_adc* iio_priv (struct iio_dev*) ;
 int stm32_dfsdm_adc_chan_init_one (struct iio_dev*,struct iio_chan_spec*) ;
 int stm32_dfsdm_dma_request (struct iio_dev*) ;

__attribute__((used)) static int stm32_dfsdm_audio_init(struct iio_dev *indio_dev)
{
 struct iio_chan_spec *ch;
 struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);
 struct stm32_dfsdm_channel *d_ch;
 int ret;

 ch = devm_kzalloc(&indio_dev->dev, sizeof(*ch), GFP_KERNEL);
 if (!ch)
  return -ENOMEM;

 ch->scan_index = 0;

 ret = stm32_dfsdm_adc_chan_init_one(indio_dev, ch);
 if (ret < 0) {
  dev_err(&indio_dev->dev, "Channels init failed\n");
  return ret;
 }
 ch->info_mask_separate = BIT(IIO_CHAN_INFO_SAMP_FREQ);

 d_ch = &adc->dfsdm->ch_list[ch->channel];
 if (d_ch->src != DFSDM_CHANNEL_SPI_CLOCK_EXTERNAL)
  adc->spi_freq = adc->dfsdm->spi_master_freq;

 indio_dev->num_channels = 1;
 indio_dev->channels = ch;

 return stm32_dfsdm_dma_request(indio_dev);
}
