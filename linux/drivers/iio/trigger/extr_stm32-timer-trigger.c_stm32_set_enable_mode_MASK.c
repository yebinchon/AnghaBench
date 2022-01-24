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
struct stm32_timer_trigger {int /*<<< orphan*/  regmap; int /*<<< orphan*/  clk; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIM_CR1 ; 
 int TIM_CR1_CEN ; 
 int /*<<< orphan*/  TIM_SMCR ; 
 int /*<<< orphan*/  TIM_SMCR_SMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct stm32_timer_trigger* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
				 const struct iio_chan_spec *chan,
				 unsigned int mode)
{
	struct stm32_timer_trigger *priv = FUNC1(indio_dev);
	int sms = FUNC4(mode);
	u32 val;

	if (sms < 0)
		return sms;
	/*
	 * Triggered mode sets CEN bit automatically by hardware. So, first
	 * enable counter clock, so it can use it. Keeps it in sync with CEN.
	 */
	if (sms == 6) {
		FUNC2(priv->regmap, TIM_CR1, &val);
		if (!(val & TIM_CR1_CEN))
			FUNC0(priv->clk);
	}

	FUNC3(priv->regmap, TIM_SMCR, TIM_SMCR_SMS, sms);

	return 0;
}