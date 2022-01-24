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
struct TYPE_2__ {int /*<<< orphan*/  min_sample_rate; } ;
struct at91_adc_state {TYPE_1__ soc_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_SAMA5D2_CR ; 
 int AT91_SAMA5D2_CR_SWRST ; 
 int /*<<< orphan*/  AT91_SAMA5D2_IDR ; 
 int /*<<< orphan*/  AT91_SAMA5D2_MR ; 
 int AT91_SAMA5D2_MR_ANACH ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct at91_adc_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct at91_adc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct at91_adc_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct at91_adc_state *st)
{
	FUNC3(st, AT91_SAMA5D2_CR, AT91_SAMA5D2_CR_SWRST);
	FUNC3(st, AT91_SAMA5D2_IDR, 0xffffffff);
	/*
	 * Transfer field must be set to 2 according to the datasheet and
	 * allows different analog settings for each channel.
	 */
	FUNC3(st, AT91_SAMA5D2_MR,
			FUNC0(2) | AT91_SAMA5D2_MR_ANACH);

	FUNC2(st, st->soc_info.min_sample_rate);

	/* configure extended mode register */
	FUNC1(st);
}