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
struct pisosr_gpio {scalar_t__* buffer; } ;
struct gpio_chip {int /*<<< orphan*/  ngpio; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int /*<<< orphan*/ ) ; 
 struct pisosr_gpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct pisosr_gpio*) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip,
				    unsigned long *mask, unsigned long *bits)
{
	struct pisosr_gpio *gpio = FUNC2(chip);
	unsigned int nbytes = FUNC0(chip->ngpio, 8);
	unsigned int i, j;

	FUNC3(gpio);

	FUNC1(bits, chip->ngpio);
	for (i = 0; i < nbytes; i++) {
		j = i / sizeof(unsigned long);
		bits[j] |= ((unsigned long) gpio->buffer[i])
			   << (8 * (i % sizeof(unsigned long)));
	}

	return 0;
}