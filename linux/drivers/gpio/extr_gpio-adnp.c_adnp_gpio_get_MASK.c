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
typedef  int u8 ;
struct gpio_chip {int dummy; } ;
struct adnp {unsigned int reg_shift; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct adnp*) ; 
 int FUNC2 (struct adnp*,scalar_t__,int*) ; 
 struct adnp* FUNC3 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned offset)
{
	struct adnp *adnp = FUNC3(chip);
	unsigned int reg = offset >> adnp->reg_shift;
	unsigned int pos = offset & 7;
	u8 value;
	int err;

	err = FUNC2(adnp, FUNC1(adnp) + reg, &value);
	if (err < 0)
		return err;

	return (value & FUNC0(pos)) ? 1 : 0;
}