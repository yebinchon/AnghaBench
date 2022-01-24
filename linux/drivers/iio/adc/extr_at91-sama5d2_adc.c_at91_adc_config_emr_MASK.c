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
struct at91_adc_state {int oversampling_ratio; } ;

/* Variables and functions */
#define  AT91_OSR_16SAMPLES 130 
#define  AT91_OSR_1SAMPLES 129 
#define  AT91_OSR_4SAMPLES 128 
 int /*<<< orphan*/  AT91_SAMA5D2_EMR ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AT91_SAMA5D2_EMR_OSR_16SAMPLES ; 
 int /*<<< orphan*/  AT91_SAMA5D2_EMR_OSR_1SAMPLES ; 
 int /*<<< orphan*/  AT91_SAMA5D2_EMR_OSR_4SAMPLES ; 
 unsigned int AT91_SAMA5D2_EMR_OSR_MASK ; 
 unsigned int FUNC2 (struct at91_adc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct at91_adc_state*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct at91_adc_state *st)
{
	/* configure the extended mode register */
	unsigned int emr = FUNC2(st, AT91_SAMA5D2_EMR);

	/* select oversampling per single trigger event */
	emr |= FUNC0(1);

	/* delete leftover content if it's the case */
	emr &= ~AT91_SAMA5D2_EMR_OSR_MASK;

	/* select oversampling ratio from configuration */
	switch (st->oversampling_ratio) {
	case AT91_OSR_1SAMPLES:
		emr |= FUNC1(AT91_SAMA5D2_EMR_OSR_1SAMPLES) &
		       AT91_SAMA5D2_EMR_OSR_MASK;
		break;
	case AT91_OSR_4SAMPLES:
		emr |= FUNC1(AT91_SAMA5D2_EMR_OSR_4SAMPLES) &
		       AT91_SAMA5D2_EMR_OSR_MASK;
		break;
	case AT91_OSR_16SAMPLES:
		emr |= FUNC1(AT91_SAMA5D2_EMR_OSR_16SAMPLES) &
		       AT91_SAMA5D2_EMR_OSR_MASK;
		break;
	}

	FUNC3(st, AT91_SAMA5D2_EMR, emr);
}