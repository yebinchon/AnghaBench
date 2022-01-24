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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct aspeed_adc_model_data {int min_sampling_rate; int max_sampling_rate; } ;
struct aspeed_adc_data {TYPE_1__* clk_scaler; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int ASPEED_CLOCKS_PER_SAMPLE ; 
 int EINVAL ; 
 int EPERM ; 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct aspeed_adc_data* FUNC1 (struct iio_dev*) ; 
 struct aspeed_adc_model_data* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
				struct iio_chan_spec const *chan,
				int val, int val2, long mask)
{
	struct aspeed_adc_data *data = FUNC1(indio_dev);
	const struct aspeed_adc_model_data *model_data =
			FUNC2(data->dev);

	switch (mask) {
	case IIO_CHAN_INFO_SAMP_FREQ:
		if (val < model_data->min_sampling_rate ||
			val > model_data->max_sampling_rate)
			return -EINVAL;

		FUNC0(data->clk_scaler->clk,
				val * ASPEED_CLOCKS_PER_SAMPLE);
		return 0;

	case IIO_CHAN_INFO_SCALE:
	case IIO_CHAN_INFO_RAW:
		/*
		 * Technically, these could be written but the only reasons
		 * for doing so seem better handled in userspace.  EPERM is
		 * returned to signal this is a policy choice rather than a
		 * hardware limitation.
		 */
		return -EPERM;

	default:
		return -EINVAL;
	}
}