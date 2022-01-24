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
struct stm32_timer_trigger {unsigned long long max_arr; int /*<<< orphan*/  regmap; int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; } ;
struct iio_trigger {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int MAX_TIM_PSC ; 
 int /*<<< orphan*/  TIM_ARR ; 
 int /*<<< orphan*/  TIM_CCER ; 
 int TIM_CCER_CCXE ; 
 int /*<<< orphan*/  TIM_CR1 ; 
 int TIM_CR1_ARPE ; 
 int TIM_CR1_CEN ; 
 int /*<<< orphan*/  TIM_CR2 ; 
 int TIM_CR2_MMS ; 
 int TIM_CR2_MMS2 ; 
 int TIM_CR2_MMS2_SHIFT ; 
 int TIM_CR2_MMS_SHIFT ; 
 int /*<<< orphan*/  TIM_EGR ; 
 int TIM_EGR_UG ; 
 int /*<<< orphan*/  TIM_PSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct stm32_timer_trigger *priv,
			     struct iio_trigger *trig,
			     unsigned int frequency)
{
	unsigned long long prd, div;
	int prescaler = 0;
	u32 ccer, cr1;

	/* Period and prescaler values depends of clock rate */
	div = (unsigned long long)FUNC1(priv->clk);

	FUNC3(div, frequency);

	prd = div;

	/*
	 * Increase prescaler value until we get a result that fit
	 * with auto reload register maximum value.
	 */
	while (div > priv->max_arr) {
		prescaler++;
		div = prd;
		FUNC3(div, (prescaler + 1));
	}
	prd = div;

	if (prescaler > MAX_TIM_PSC) {
		FUNC2(priv->dev, "prescaler exceeds the maximum value\n");
		return -EINVAL;
	}

	/* Check if nobody else use the timer */
	FUNC4(priv->regmap, TIM_CCER, &ccer);
	if (ccer & TIM_CCER_CCXE)
		return -EBUSY;

	FUNC4(priv->regmap, TIM_CR1, &cr1);
	if (!(cr1 & TIM_CR1_CEN))
		FUNC0(priv->clk);

	FUNC6(priv->regmap, TIM_PSC, prescaler);
	FUNC6(priv->regmap, TIM_ARR, prd - 1);
	FUNC5(priv->regmap, TIM_CR1, TIM_CR1_ARPE, TIM_CR1_ARPE);

	/* Force master mode to update mode */
	if (FUNC7(trig->name))
		FUNC5(priv->regmap, TIM_CR2, TIM_CR2_MMS2,
				   0x2 << TIM_CR2_MMS2_SHIFT);
	else
		FUNC5(priv->regmap, TIM_CR2, TIM_CR2_MMS,
				   0x2 << TIM_CR2_MMS_SHIFT);

	/* Make sure that registers are updated */
	FUNC5(priv->regmap, TIM_EGR, TIM_EGR_UG, TIM_EGR_UG);

	/* Enable controller */
	FUNC5(priv->regmap, TIM_CR1, TIM_CR1_CEN, TIM_CR1_CEN);

	return 0;
}