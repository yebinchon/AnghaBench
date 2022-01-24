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
typedef  int /*<<< orphan*/  u_int32_t ;
struct vx855_gpio {int /*<<< orphan*/  lock; int /*<<< orphan*/  io_gpo; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int NR_VX855_GPI ; 
 unsigned int NR_VX855_GPInO ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct vx855_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *gpio,
				     unsigned int nr)
{
	struct vx855_gpio *vg = FUNC1(gpio);
	unsigned long flags;
	u_int32_t reg_out;

	/* Real GPI bits are always in input direction */
	if (nr < NR_VX855_GPI)
		return 0;

	/* Real GPO bits cannot be put in output direction */
	if (nr < NR_VX855_GPInO)
		return -EINVAL;

	/* Open Drain GPIO have to be set to one */
	FUNC4(&vg->lock, flags);
	reg_out = FUNC2(vg->io_gpo);
	reg_out |= FUNC0(nr - NR_VX855_GPInO);
	FUNC3(reg_out, vg->io_gpo);
	FUNC5(&vg->lock, flags);

	return 0;
}