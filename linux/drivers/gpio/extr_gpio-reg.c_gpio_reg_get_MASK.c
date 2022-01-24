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
typedef  int u32 ;
struct gpio_reg {int direction; int out; int /*<<< orphan*/  reg; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct gpio_reg* FUNC2 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned offset)
{
	struct gpio_reg *r = FUNC2(gc);
	u32 val, mask = FUNC0(offset);

	if (r->direction & mask) {
		/*
		 * double-read the value, some registers latch after the
		 * first read.
		 */
		FUNC1(r->reg);
		val = FUNC1(r->reg);
	} else {
		val = r->out;
	}
	return !!(val & mask);
}