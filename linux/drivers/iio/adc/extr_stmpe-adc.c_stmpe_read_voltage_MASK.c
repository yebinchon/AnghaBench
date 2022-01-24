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
struct stmpe_adc {scalar_t__ channel; int value; int /*<<< orphan*/  lock; int /*<<< orphan*/  stmpe; int /*<<< orphan*/  completion; } ;
struct iio_chan_spec {scalar_t__ channel; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ STMPE_ADC_LAST_NR ; 
 int /*<<< orphan*/  STMPE_ADC_TIMEOUT ; 
 int /*<<< orphan*/  STMPE_REG_ADC_CAPT ; 
 int /*<<< orphan*/  STMPE_REG_ADC_INT_STA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct stmpe_adc *info,
		struct iio_chan_spec const *chan, int *val)
{
	long ret;

	FUNC1(&info->lock);

	FUNC3(&info->completion);

	info->channel = (u8)chan->channel;

	if (info->channel > STMPE_ADC_LAST_NR) {
		FUNC2(&info->lock);
		return -EINVAL;
	}

	FUNC4(info->stmpe, STMPE_REG_ADC_CAPT,
			FUNC0(info->channel));

	ret = FUNC5(&info->completion, STMPE_ADC_TIMEOUT);

	if (ret <= 0) {
		FUNC4(info->stmpe, STMPE_REG_ADC_INT_STA,
				FUNC0(info->channel));
		FUNC2(&info->lock);
		return -ETIMEDOUT;
	}

	*val = info->value;

	FUNC2(&info->lock);

	return 0;
}