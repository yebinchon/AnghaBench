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
struct adp5588_gpio {unsigned int* dir; int* dat_out; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 scalar_t__ GPIO_DAT_STAT1 ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct adp5588_gpio* FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned off)
{
	struct adp5588_gpio *dev = FUNC3(chip);
	unsigned bank = FUNC0(off);
	unsigned bit = FUNC1(off);
	int val;

	FUNC4(&dev->lock);

	if (dev->dir[bank] & bit)
		val = dev->dat_out[bank];
	else
		val = FUNC2(dev->client, GPIO_DAT_STAT1 + bank);

	FUNC5(&dev->lock);

	return !!(val & bit);
}