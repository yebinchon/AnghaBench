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
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct adnp {int reg_shift; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  i2c_lock; int /*<<< orphan*/ * irq_enable; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct adnp*) ; 
 int /*<<< orphan*/  FUNC1 (struct adnp*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct adnp* FUNC2 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC3(d);
	struct adnp *adnp = FUNC2(gc);
	unsigned int num_regs = 1 << adnp->reg_shift, i;

	FUNC4(&adnp->i2c_lock);

	for (i = 0; i < num_regs; i++)
		FUNC1(adnp, FUNC0(adnp) + i, adnp->irq_enable[i]);

	FUNC5(&adnp->i2c_lock);
	FUNC5(&adnp->irq_lock);
}