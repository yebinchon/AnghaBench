#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct imx7d_adc {int channel; int value; int vref_uv; int /*<<< orphan*/  vref; int /*<<< orphan*/  completion; } ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {int channel; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
#define  IIO_CHAN_INFO_RAW 130 
#define  IIO_CHAN_INFO_SAMP_FREQ 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  IMX7D_ADC_TIMEOUT ; 
 struct imx7d_adc* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct imx7d_adc*) ; 
 int FUNC2 (struct imx7d_adc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 long FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
			struct iio_chan_spec const *chan,
			int *val,
			int *val2,
			long mask)
{
	struct imx7d_adc *info = FUNC0(indio_dev);

	u32 channel;
	long ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC3(&indio_dev->mlock);
		FUNC6(&info->completion);

		channel = chan->channel & 0x03;
		info->channel = channel;
		FUNC1(info);

		ret = FUNC7
				(&info->completion, IMX7D_ADC_TIMEOUT);
		if (ret == 0) {
			FUNC4(&indio_dev->mlock);
			return -ETIMEDOUT;
		}
		if (ret < 0) {
			FUNC4(&indio_dev->mlock);
			return ret;
		}

		*val = info->value;
		FUNC4(&indio_dev->mlock);
		return IIO_VAL_INT;

	case IIO_CHAN_INFO_SCALE:
		info->vref_uv = FUNC5(info->vref);
		*val = info->vref_uv / 1000;
		*val2 = 12;
		return IIO_VAL_FRACTIONAL_LOG2;

	case IIO_CHAN_INFO_SAMP_FREQ:
		*val = FUNC2(info);
		return IIO_VAL_INT;

	default:
		return -EINVAL;
	}
}