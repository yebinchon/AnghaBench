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
struct stm32_dfsdm_channel {int /*<<< orphan*/  src; } ;
struct stm32_dfsdm_adc {int oversamp; unsigned int spi_freq; TYPE_1__* dfsdm; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct TYPE_2__ {unsigned int spi_master_freq; struct stm32_dfsdm_channel* ch_list; } ;

/* Variables and functions */
#define  DFSDM_CHANNEL_SPI_CLOCK_INTERNAL 132 
#define  DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_FALLING 131 
#define  DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_RISING 130 
 int EINVAL ; 
#define  IIO_CHAN_INFO_OVERSAMPLING_RATIO 129 
#define  IIO_CHAN_INFO_SAMP_FREQ 128 
 int FUNC0 (struct iio_dev*,int,unsigned int) ; 
 int FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct stm32_dfsdm_adc* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
				 struct iio_chan_spec const *chan,
				 int val, int val2, long mask)
{
	struct stm32_dfsdm_adc *adc = FUNC3(indio_dev);
	struct stm32_dfsdm_channel *ch = &adc->dfsdm->ch_list[chan->channel];
	unsigned int spi_freq;
	int ret = -EINVAL;

	switch (mask) {
	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
		ret = FUNC1(indio_dev);
		if (ret)
			return ret;
		ret = FUNC4(indio_dev, val);
		if (!ret)
			adc->oversamp = val;
		FUNC2(indio_dev);
		return ret;

	case IIO_CHAN_INFO_SAMP_FREQ:
		if (!val)
			return -EINVAL;

		ret = FUNC1(indio_dev);
		if (ret)
			return ret;

		switch (ch->src) {
		case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL:
			spi_freq = adc->dfsdm->spi_master_freq;
			break;
		case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_FALLING:
		case DFSDM_CHANNEL_SPI_CLOCK_INTERNAL_DIV2_RISING:
			spi_freq = adc->dfsdm->spi_master_freq / 2;
			break;
		default:
			spi_freq = adc->spi_freq;
		}

		ret = FUNC0(indio_dev, val, spi_freq);
		FUNC2(indio_dev);
		return ret;
	}

	return -EINVAL;
}