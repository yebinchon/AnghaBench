#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stm32_dfsdm_channel {scalar_t__ src; } ;
struct stm32_dfsdm_adc {TYPE_1__* dfsdm; int /*<<< orphan*/  spi_freq; } ;
struct iio_dev {int num_channels; struct iio_chan_spec* channels; int /*<<< orphan*/  dev; } ;
struct iio_chan_spec {size_t channel; int /*<<< orphan*/  info_mask_separate; scalar_t__ scan_index; } ;
struct TYPE_2__ {int /*<<< orphan*/  spi_master_freq; struct stm32_dfsdm_channel* ch_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DFSDM_CHANNEL_SPI_CLOCK_EXTERNAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IIO_CHAN_INFO_SAMP_FREQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct iio_chan_spec* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct stm32_dfsdm_adc* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*,struct iio_chan_spec*) ; 
 int FUNC5 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC6(struct iio_dev *indio_dev)
{
	struct iio_chan_spec *ch;
	struct stm32_dfsdm_adc *adc = FUNC3(indio_dev);
	struct stm32_dfsdm_channel *d_ch;
	int ret;

	ch = FUNC2(&indio_dev->dev, sizeof(*ch), GFP_KERNEL);
	if (!ch)
		return -ENOMEM;

	ch->scan_index = 0;

	ret = FUNC4(indio_dev, ch);
	if (ret < 0) {
		FUNC1(&indio_dev->dev, "Channels init failed\n");
		return ret;
	}
	ch->info_mask_separate = FUNC0(IIO_CHAN_INFO_SAMP_FREQ);

	d_ch = &adc->dfsdm->ch_list[ch->channel];
	if (d_ch->src != DFSDM_CHANNEL_SPI_CLOCK_EXTERNAL)
		adc->spi_freq = adc->dfsdm->spi_master_freq;

	indio_dev->num_channels = 1;
	indio_dev->channels = ch;

	return FUNC5(indio_dev);
}