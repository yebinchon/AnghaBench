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
struct tiadc_device {int channels; int* channel_line; scalar_t__* step_avg; scalar_t__* open_delay; int* sample_delay; int* channel_step; TYPE_1__* mfd_tscadc; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 scalar_t__ STEPCONFIG_AVG_16 ; 
 unsigned int STEPCONFIG_FIFO1 ; 
 unsigned int STEPCONFIG_INM_ADCREFM ; 
 unsigned int FUNC3 (int) ; 
 unsigned int STEPCONFIG_MODE_SWCNT ; 
 unsigned int STEPCONFIG_RFM_VREFN ; 
 unsigned int STEPCONFIG_RFP_VREFP ; 
 unsigned int FUNC4 (scalar_t__) ; 
 scalar_t__ STEPDELAY_OPEN_MASK ; 
 unsigned int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int,...) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (struct iio_dev*) ; 
 struct tiadc_device* FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct tiadc_device*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC11(struct iio_dev *indio_dev)
{
	struct tiadc_device *adc_dev = FUNC9(indio_dev);
	struct device *dev = adc_dev->mfd_tscadc->dev;
	unsigned int stepconfig;
	int i, steps = 0;

	/*
	 * There are 16 configurable steps and 8 analog input
	 * lines available which are shared between Touchscreen and ADC.
	 *
	 * Steps forwards i.e. from 0 towards 16 are used by ADC
	 * depending on number of input lines needed.
	 * Channel would represent which analog input
	 * needs to be given to ADC to digitalize data.
	 */


	for (i = 0; i < adc_dev->channels; i++) {
		int chan;

		chan = adc_dev->channel_line[i];

		if (adc_dev->step_avg[i] > STEPCONFIG_AVG_16) {
			FUNC6(dev, "chan %d step_avg truncating to %d\n",
				 chan, STEPCONFIG_AVG_16);
			adc_dev->step_avg[i] = STEPCONFIG_AVG_16;
		}

		if (adc_dev->step_avg[i])
			stepconfig =
			FUNC2(FUNC7(adc_dev->step_avg[i]) - 1) |
			STEPCONFIG_FIFO1;
		else
			stepconfig = STEPCONFIG_FIFO1;

		if (FUNC8(indio_dev))
			stepconfig |= STEPCONFIG_MODE_SWCNT;

		FUNC10(adc_dev, FUNC0(steps),
				stepconfig | FUNC3(chan) |
				STEPCONFIG_INM_ADCREFM |
				STEPCONFIG_RFP_VREFP |
				STEPCONFIG_RFM_VREFN);

		if (adc_dev->open_delay[i] > STEPDELAY_OPEN_MASK) {
			FUNC6(dev, "chan %d open delay truncating to 0x3FFFF\n",
				 chan);
			adc_dev->open_delay[i] = STEPDELAY_OPEN_MASK;
		}

		if (adc_dev->sample_delay[i] > 0xFF) {
			FUNC6(dev, "chan %d sample delay truncating to 0xFF\n",
				 chan);
			adc_dev->sample_delay[i] = 0xFF;
		}

		FUNC10(adc_dev, FUNC1(steps),
				FUNC4(adc_dev->open_delay[i]) |
				FUNC5(adc_dev->sample_delay[i]));

		adc_dev->channel_step[i] = steps;
		steps++;
	}
}