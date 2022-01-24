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
struct gpio_chip {int ngpio; unsigned long (* read_reg ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  reg_dat; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct gpio_chip*,int) ; 
 int FUNC1 (unsigned long*,int,int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned long *mask,
				 unsigned long *bits)
{
	unsigned long readmask = 0;
	unsigned long val;
	int bit;

	/* Make sure we first clear any bits that are zero when we read the register */
	*bits &= ~*mask;

	/* Create a mirrored mask */
	bit = -1;
	while ((bit = FUNC1(mask, gc->ngpio, bit + 1)) < gc->ngpio)
		readmask |= FUNC0(gc, bit);

	/* Read the register */
	val = gc->read_reg(gc->reg_dat) & readmask;

	/*
	 * Mirror the result into the "bits" result, this will give line 0
	 * in bit 0 ... line 31 in bit 31 for a 32bit register.
	 */
	bit = -1;
	while ((bit = FUNC1(&val, gc->ngpio, bit + 1)) < gc->ngpio)
		*bits |= FUNC0(gc, bit);

	return 0;
}