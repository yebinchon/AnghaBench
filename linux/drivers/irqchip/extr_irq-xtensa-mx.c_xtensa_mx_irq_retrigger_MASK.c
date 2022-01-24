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
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int XCHAL_INTTYPE_MASK_SOFTWARE ; 
 int /*<<< orphan*/  intset ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct irq_data *d)
{
	unsigned int mask = 1u << d->hwirq;

	if (FUNC0(mask & ~XCHAL_INTTYPE_MASK_SOFTWARE))
		return 0;
	FUNC1(mask, intset);
	return 1;
}