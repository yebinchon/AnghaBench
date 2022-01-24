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
struct irq_data {int /*<<< orphan*/  mask; } ;
struct irq_chip_generic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_AIC_ISCR ; 
 struct irq_chip_generic* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip_generic*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip_generic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct irq_data *d)
{
	struct irq_chip_generic *gc = FUNC0(d);

	/* Enable interrupt on AIC5 */
	FUNC1(gc);
	FUNC3(gc, d->mask, AT91_AIC_ISCR);
	FUNC2(gc);

	return 0;
}