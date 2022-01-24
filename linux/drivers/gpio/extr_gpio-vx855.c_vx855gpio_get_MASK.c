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
typedef  int u_int32_t ;
struct vx855_gpio {int /*<<< orphan*/  io_gpi; int /*<<< orphan*/  io_gpo; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int NR_VX855_GPI ; 
 unsigned int NR_VX855_GPInO ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 struct vx855_gpio* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gpio, unsigned int nr)
{
	struct vx855_gpio *vg = FUNC2(gpio);
	u_int32_t reg_in;
	int ret = 0;

	if (nr < NR_VX855_GPI) {
		reg_in = FUNC4(vg->io_gpi);
		if (reg_in & FUNC0(nr))
			ret = 1;
	} else if (nr < NR_VX855_GPInO) {
		/* GPO don't have an input bit, we need to read it
		 * back from the output register */
		reg_in = FUNC4(vg->io_gpo);
		if (reg_in & FUNC3(nr - NR_VX855_GPI))
			ret = 1;
	} else {
		reg_in = FUNC4(vg->io_gpi);
		if (reg_in & FUNC1(nr - NR_VX855_GPInO))
			ret = 1;
	}

	return ret;
}