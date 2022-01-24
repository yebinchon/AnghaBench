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
struct gpio_chip {int /*<<< orphan*/  label; } ;
struct of_mm_gpio_chip {int /*<<< orphan*/  regs; struct gpio_chip gc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct of_mm_gpio_chip *mm_gc)
{
	struct gpio_chip *gc = &mm_gc->gc;

	if (!mm_gc)
		return;

	FUNC0(gc);
	FUNC1(mm_gc->regs);
	FUNC2(gc->label);
}