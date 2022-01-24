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
struct mxs_lradc_adc {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ LRADC_CTRL2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int LRADC_DELAY_DELAY_OFFSET ; 
 int LRADC_DELAY_TIMER_PER ; 
 int /*<<< orphan*/  LRADC_DELAY_TRIGGER_DELAYS_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int const,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mxs_lradc_adc *adc)
{
	/* The ADC always uses DELAY CHANNEL 0. */
	const u32 adc_cfg =
		(1 << (LRADC_DELAY_TRIGGER_DELAYS_OFFSET + 0)) |
		(LRADC_DELAY_TIMER_PER << LRADC_DELAY_DELAY_OFFSET);

	/* Configure DELAY CHANNEL 0 for generic ADC sampling. */
	FUNC1(adc_cfg, adc->base + FUNC0(0));

	/*
	 * Start internal temperature sensing by clearing bit
	 * HW_LRADC_CTRL2_TEMPSENSE_PWD. This bit can be left cleared
	 * after power up.
	 */
	FUNC1(0, adc->base + LRADC_CTRL2);
}