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
struct gpio_rcar_priv {int /*<<< orphan*/  wakeup_path; scalar_t__ irq_parent; int /*<<< orphan*/  dev; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct gpio_rcar_priv* FUNC3 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC4 (struct irq_data*) ; 
 int FUNC5 (scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct irq_data *d, unsigned int on)
{
	struct gpio_chip *gc = FUNC4(d);
	struct gpio_rcar_priv *p = FUNC3(gc);
	int error;

	if (p->irq_parent) {
		error = FUNC5(p->irq_parent, on);
		if (error) {
			FUNC2(p->dev, "irq %u doesn't support irq_set_wake\n",
				p->irq_parent);
			p->irq_parent = 0;
		}
	}

	if (on)
		FUNC1(&p->wakeup_path);
	else
		FUNC0(&p->wakeup_path);

	return 0;
}