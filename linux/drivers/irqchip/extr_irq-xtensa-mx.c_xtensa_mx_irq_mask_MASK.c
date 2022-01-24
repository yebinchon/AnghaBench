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
struct irq_data {unsigned int hwirq; } ;

/* Variables and functions */
 unsigned int HW_IRQ_MX_BASE ; 
 int /*<<< orphan*/  MIENG ; 
 unsigned int XCHAL_INTTYPE_MASK_EXTERN_EDGE ; 
 unsigned int XCHAL_INTTYPE_MASK_EXTERN_LEVEL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  cached_irq_mask ; 
 int /*<<< orphan*/  intenable ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	unsigned int mask = 1u << d->hwirq;

	if (mask & (XCHAL_INTTYPE_MASK_EXTERN_EDGE |
		    XCHAL_INTTYPE_MASK_EXTERN_LEVEL)) {
		unsigned int ext_irq = FUNC3(d->hwirq);

		if (ext_irq >= HW_IRQ_MX_BASE) {
			FUNC2(1u << (ext_irq - HW_IRQ_MX_BASE), MIENG);
			return;
		}
	}
	mask = FUNC0(cached_irq_mask) & ~mask;
	FUNC1(cached_irq_mask, mask);
	FUNC4(mask, intenable);
}