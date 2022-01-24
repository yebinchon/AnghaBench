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
typedef  unsigned long u32 ;
struct irq_data {int hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDS32_SR_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long*,int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long wake_mask ; 

__attribute__((used)) static int FUNC3(struct irq_data *data, unsigned int on)
{
	unsigned long int_mask = FUNC1(NDS32_SR_INT_MASK);
	static unsigned long irq_orig_bit;
	u32 bit = 1 << data->hwirq;

	if (on) {
		if (int_mask & bit)
			FUNC0(data->hwirq, &irq_orig_bit, true);
		else
			FUNC0(data->hwirq, &irq_orig_bit, false);

		FUNC0(data->hwirq, &int_mask, true);
		FUNC0(data->hwirq, &wake_mask, true);

	} else {
		if (!(irq_orig_bit & bit))
			FUNC0(data->hwirq, &int_mask, false);

		FUNC0(data->hwirq, &wake_mask, false);
		FUNC0(data->hwirq, &irq_orig_bit, false);
	}

	FUNC2(int_mask, NDS32_SR_INT_MASK);

	return 0;
}