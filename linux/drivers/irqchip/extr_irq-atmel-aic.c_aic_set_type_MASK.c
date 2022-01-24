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
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct irq_chip_generic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct irq_data*,unsigned int,unsigned int*) ; 
 struct irq_chip_generic* FUNC2 (struct irq_data*) ; 
 unsigned int FUNC3 (struct irq_chip_generic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_chip_generic*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct irq_data *d, unsigned type)
{
	struct irq_chip_generic *gc = FUNC2(d);
	unsigned int smr;
	int ret;

	smr = FUNC3(gc, FUNC0(d->hwirq));
	ret = FUNC1(d, type, &smr);
	if (ret)
		return ret;

	FUNC4(gc, smr, FUNC0(d->hwirq));

	return 0;
}