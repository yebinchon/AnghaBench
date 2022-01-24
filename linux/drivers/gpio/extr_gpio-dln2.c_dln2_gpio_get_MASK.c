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
struct dln2_gpio {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct gpio_chip*,unsigned int) ; 
 int FUNC1 (struct dln2_gpio*,unsigned int) ; 
 int FUNC2 (struct dln2_gpio*,unsigned int) ; 
 struct dln2_gpio* FUNC3 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned int offset)
{
	struct dln2_gpio *dln2 = FUNC3(chip);
	int dir;

	dir = FUNC0(chip, offset);
	if (dir < 0)
		return dir;

	if (dir == 1)
		return FUNC1(dln2, offset);

	return FUNC2(dln2, offset);
}