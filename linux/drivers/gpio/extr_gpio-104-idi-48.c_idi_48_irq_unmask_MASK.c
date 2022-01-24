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
struct idi_48_gpio {unsigned int* irq_mask; unsigned int cos_enb; int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int const) ; 
 struct idi_48_gpio* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 unsigned int FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct irq_data *data)
{
	struct gpio_chip *chip = FUNC2(data);
	struct idi_48_gpio *const idi48gpio = FUNC1(chip);
	const unsigned offset = FUNC3(data);
	unsigned i;
	unsigned mask;
	unsigned boundary;
	unsigned prev_irq_mask;
	unsigned long flags;

	for (i = 0; i < 48; i += 8)
		if (offset < i + 8) {
			mask = FUNC0(offset - i);
			boundary = i / 8;
			prev_irq_mask = idi48gpio->irq_mask[boundary];

			idi48gpio->irq_mask[boundary] |= mask;

			if (!prev_irq_mask) {
				idi48gpio->cos_enb |= FUNC0(boundary);

				FUNC5(&idi48gpio->lock, flags);

				FUNC4(idi48gpio->cos_enb, idi48gpio->base + 7);

				FUNC6(&idi48gpio->lock,
						           flags);
			}

			return;
		}
}