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
struct gpio_reg {int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  out; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct gpio_reg* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct gpio_chip *gc)
{
	struct gpio_reg *r = FUNC2(gc);
	unsigned long flags;

	FUNC0(&r->lock, flags);
	FUNC3(r->out, r->reg);
	FUNC1(&r->lock, flags);

	return 0;
}