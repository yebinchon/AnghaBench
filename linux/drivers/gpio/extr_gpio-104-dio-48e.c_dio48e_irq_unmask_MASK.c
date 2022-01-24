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
struct dio48e_gpio {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_mask; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct dio48e_gpio* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 unsigned long FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct irq_data *data)
{
	struct gpio_chip *chip = FUNC2(data);
	struct dio48e_gpio *const dio48egpio = FUNC1(chip);
	const unsigned long offset = FUNC3(data);
	unsigned long flags;

	/* only bit 3 on each respective Port C supports interrupts */
	if (offset != 19 && offset != 43)
		return;

	FUNC5(&dio48egpio->lock, flags);

	if (!dio48egpio->irq_mask) {
		/* enable interrupts */
		FUNC4(0x00, dio48egpio->base + 0xF);
		FUNC4(0x00, dio48egpio->base + 0xB);
	}

	if (offset == 19)
		dio48egpio->irq_mask |= FUNC0(0);
	else
		dio48egpio->irq_mask |= FUNC0(1);

	FUNC6(&dio48egpio->lock, flags);
}