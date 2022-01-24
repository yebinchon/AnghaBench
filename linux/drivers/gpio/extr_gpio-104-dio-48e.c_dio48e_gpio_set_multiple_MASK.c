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
struct gpio_chip {unsigned int ngpio; } ;
struct dio48e_gpio {unsigned long* out_state; int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 size_t FUNC0 (unsigned int) ; 
 struct dio48e_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct gpio_chip *chip,
	unsigned long *mask, unsigned long *bits)
{
	struct dio48e_gpio *const dio48egpio = FUNC1(chip);
	unsigned int i;
	const unsigned int gpio_reg_size = 8;
	unsigned int port;
	unsigned int out_port;
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
		out_port = (port > 2) ? port + 1 : port;
		bitmask = mask[FUNC0(i)] & bits[FUNC0(i)];

		FUNC3(&dio48egpio->lock, flags);

		/* update output state data and set device gpio register */
		dio48egpio->out_state[port] &= ~mask[FUNC0(i)];
		dio48egpio->out_state[port] |= bitmask;
		FUNC2(dio48egpio->out_state[port], dio48egpio->base + out_port);

		FUNC4(&dio48egpio->lock, flags);

		/* prepare for next gpio register set */
		mask[FUNC0(i)] >>= gpio_reg_size;
		bits[FUNC0(i)] >>= gpio_reg_size;
	}
}