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
struct gpio_chip {int /*<<< orphan*/  ngpio; } ;
struct dio48e_gpio {scalar_t__ base; } ;

/* Variables and functions */
 size_t FUNC0 (size_t const*) ; 
 unsigned int BITS_PER_LONG ; 
 size_t FUNC1 (unsigned int) ; 
 unsigned long FUNC2 (unsigned int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,int /*<<< orphan*/ ) ; 
 struct dio48e_gpio* FUNC4 (struct gpio_chip*) ; 
 unsigned long FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned long *mask,
	unsigned long *bits)
{
	struct dio48e_gpio *const dio48egpio = FUNC4(chip);
	size_t i;
	static const size_t ports[] = { 0, 1, 2, 4, 5, 6 };
	const unsigned int gpio_reg_size = 8;
	unsigned int bits_offset;
	size_t word_index;
	unsigned int word_offset;
	unsigned long word_mask;
	const unsigned long port_mask = FUNC2(gpio_reg_size - 1, 0);
	unsigned long port_state;

	/* clear bits array to a clean slate */
	FUNC3(bits, chip->ngpio);

	/* get bits are evaluated a gpio port register at a time */
	for (i = 0; i < FUNC0(ports); i++) {
		/* gpio offset in bits array */
		bits_offset = i * gpio_reg_size;

		/* word index for bits array */
		word_index = FUNC1(bits_offset);

		/* gpio offset within current word of bits array */
		word_offset = bits_offset % BITS_PER_LONG;

		/* mask of get bits for current gpio within current word */
		word_mask = mask[word_index] & (port_mask << word_offset);
		if (!word_mask) {
			/* no get bits in this port so skip to next one */
			continue;
		}

		/* read bits from current gpio port */
		port_state = FUNC5(dio48egpio->base + ports[i]);

		/* store acquired bits at respective bits array offset */
		bits[word_index] |= (port_state << word_offset) & word_mask;
	}

	return 0;
}