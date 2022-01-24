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
typedef  scalar_t__ u8 ;
struct stmpe_adc {scalar_t__ channel; long value; int /*<<< orphan*/  lock; int /*<<< orphan*/  completion; int /*<<< orphan*/  stmpe; } ;
struct iio_chan_spec {scalar_t__ channel; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  STMPE_ADC_TIMEOUT ; 
 int /*<<< orphan*/  STMPE_REG_TEMP_CTRL ; 
 int /*<<< orphan*/  STMPE_START_ONE_TEMP_CONV ; 
 scalar_t__ STMPE_TEMP_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct stmpe_adc *info,
		struct iio_chan_spec const *chan, int *val)
{
	long ret;

	FUNC0(&info->lock);

	FUNC2(&info->completion);

	info->channel = (u8)chan->channel;

	if (info->channel != STMPE_TEMP_CHANNEL) {
		FUNC1(&info->lock);
		return -EINVAL;
	}

	FUNC3(info->stmpe, STMPE_REG_TEMP_CTRL,
			STMPE_START_ONE_TEMP_CONV);

	ret = FUNC4(&info->completion, STMPE_ADC_TIMEOUT);

	if (ret <= 0) {
		FUNC1(&info->lock);
		return -ETIMEDOUT;
	}

	/*
	 * absolute temp = +V3.3 * value /7.51 [K]
	 * scale to [milli °C]
	 */
	*val = ((449960l * info->value) / 1024l) - 273150;

	FUNC1(&info->lock);

	return 0;
}