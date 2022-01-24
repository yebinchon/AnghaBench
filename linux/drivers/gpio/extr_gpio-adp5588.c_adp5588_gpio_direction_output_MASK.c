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
struct gpio_chip {int dummy; } ;
struct adp5588_gpio {unsigned int* dir; unsigned int* dat_out; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 scalar_t__ GPIO_DAT_OUT1 ; 
 scalar_t__ GPIO_DIR1 ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 struct adp5588_gpio* FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip,
					 unsigned off, int val)
{
	int ret;
	unsigned bank, bit;
	struct adp5588_gpio *dev = FUNC3(chip);

	bank = FUNC0(off);
	bit = FUNC1(off);

	FUNC4(&dev->lock);
	dev->dir[bank] |= bit;

	if (val)
		dev->dat_out[bank] |= bit;
	else
		dev->dat_out[bank] &= ~bit;

	ret = FUNC2(dev->client, GPIO_DAT_OUT1 + bank,
				 dev->dat_out[bank]);
	ret |= FUNC2(dev->client, GPIO_DIR1 + bank,
				 dev->dir[bank]);
	FUNC5(&dev->lock);

	return ret;
}