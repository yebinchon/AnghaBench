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

/* Variables and functions */
 int /*<<< orphan*/  TIM_ARR ; 
 int /*<<< orphan*/  TIM_CCER ; 
 int TIM_CCER_CCXE ; 
 int /*<<< orphan*/  TIM_CR1 ; 
 int TIM_CR1_ARPE ; 
 int TIM_CR1_CEN ; 
 int /*<<< orphan*/  TIM_EGR ; 
 int TIM_EGR_UG ; 
 int /*<<< orphan*/  TIM_PSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct stm32_timer_trigger *priv)
{
	u32 ccer, cr1;

	FUNC1(priv->regmap, TIM_CCER, &ccer);
	if (ccer & TIM_CCER_CCXE)
		return;

	FUNC1(priv->regmap, TIM_CR1, &cr1);
	if (cr1 & TIM_CR1_CEN)
		FUNC0(priv->clk);

	/* Stop timer */
	FUNC2(priv->regmap, TIM_CR1, TIM_CR1_ARPE, 0);
	FUNC2(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);
	FUNC3(priv->regmap, TIM_PSC, 0);
	FUNC3(priv->regmap, TIM_ARR, 0);

	/* Make sure that registers are updated */
	FUNC2(priv->regmap, TIM_EGR, TIM_EGR_UG, TIM_EGR_UG);
}