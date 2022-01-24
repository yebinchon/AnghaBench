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
struct rockchip_saradc {int last_val; TYPE_1__* data; int /*<<< orphan*/  vref; scalar_t__ regs; int /*<<< orphan*/  completion; } ;
struct iio_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {int channel; } ;
struct TYPE_2__ {int num_bits; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 scalar_t__ SARADC_CTRL ; 
 int SARADC_CTRL_CHN_MASK ; 
 int SARADC_CTRL_IRQ_ENABLE ; 
 int SARADC_CTRL_POWER_CTRL ; 
 scalar_t__ SARADC_DLY_PU_SOC ; 
 int /*<<< orphan*/  SARADC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct rockchip_saradc* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct iio_dev *indio_dev,
				    struct iio_chan_spec const *chan,
				    int *val, int *val2, long mask)
{
	struct rockchip_saradc *info = FUNC1(indio_dev);
	int ret;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		FUNC2(&indio_dev->mlock);

		FUNC5(&info->completion);

		/* 8 clock periods as delay between power up and start cmd */
		FUNC8(8, info->regs + SARADC_DLY_PU_SOC);

		/* Select the channel to be used and trigger conversion */
		FUNC7(SARADC_CTRL_POWER_CTRL
				| (chan->channel & SARADC_CTRL_CHN_MASK)
				| SARADC_CTRL_IRQ_ENABLE,
		       info->regs + SARADC_CTRL);

		if (!FUNC6(&info->completion,
						 SARADC_TIMEOUT)) {
			FUNC8(0, info->regs + SARADC_CTRL);
			FUNC3(&indio_dev->mlock);
			return -ETIMEDOUT;
		}

		*val = info->last_val;
		FUNC3(&indio_dev->mlock);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		ret = FUNC4(info->vref);
		if (ret < 0) {
			FUNC0(&indio_dev->dev, "failed to get voltage\n");
			return ret;
		}

		*val = ret / 1000;
		*val2 = info->data->num_bits;
		return IIO_VAL_FRACTIONAL_LOG2;
	default:
		return -EINVAL;
	}
}