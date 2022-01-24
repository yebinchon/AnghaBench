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
struct irq_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct em_gio_priv {TYPE_1__ gpio_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct em_gio_priv* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 

__attribute__((used)) static int FUNC4(struct irq_data *d)
{
	struct em_gio_priv *p = FUNC2(d);
	int ret;

	ret = FUNC1(&p->gpio_chip, FUNC3(d));
	if (ret) {
		FUNC0(p->gpio_chip.parent,
			"unable to lock HW IRQ %lu for IRQ\n",
			FUNC3(d));
		return ret;
	}
	return 0;
}