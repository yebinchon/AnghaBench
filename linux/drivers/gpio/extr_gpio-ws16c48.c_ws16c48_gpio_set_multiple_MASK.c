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
struct ws16c48_gpio {unsigned long* io_state; unsigned int* out_state; int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct gpio_chip {unsigned int ngpio; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 size_t FUNC0 (unsigned int) ; 
 struct ws16c48_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct gpio_chip *chip,
	unsigned long *mask, unsigned long *bits)
{
	struct ws16c48_gpio *const ws16c48gpio = FUNC1(chip);
	unsigned int i;
	const unsigned int gpio_reg_size = 8;
	unsigned int port;
	unsigned int iomask;
	unsigned int bitmask;
	unsigned long flags;

	/* set bits are evaluated a gpio register size at a time */
	for (i = 0; i < chip->ngpio; i += gpio_reg_size) {
		/* no more set bits in this mask word; skip to the next word */
		if (!mask[FUNC0(i)]) {
			i = (FUNC0(i) + 1) * BITS_PER_LONG - gpio_reg_size;
			continue;
		}

		port = i / gpio_reg_size;

		/* mask out GPIO configured for input */
		iomask = mask[FUNC0(i)] & ~ws16c48gpio->io_state[port];
		bitmask = iomask & bits[FUNC0(i)];

		FUNC3(&ws16c48gpio->lock, flags);

		/* update output state data and set device gpio register */
		ws16c48gpio->out_state[port] &= ~iomask;
		ws16c48gpio->out_state[port] |= bitmask;
		FUNC2(ws16c48gpio->out_state[port], ws16c48gpio->base + port);

		FUNC4(&ws16c48gpio->lock, flags);

		/* prepare for next gpio register set */
		mask[FUNC0(i)] >>= gpio_reg_size;
		bits[FUNC0(i)] >>= gpio_reg_size;
	}
}