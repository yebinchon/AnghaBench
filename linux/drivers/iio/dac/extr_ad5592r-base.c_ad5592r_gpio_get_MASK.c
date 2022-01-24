#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct gpio_chip {int dummy; } ;
struct ad5592r_state {int gpio_out; int gpio_val; int /*<<< orphan*/  gpio_lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* gpio_read ) (struct ad5592r_state*,int*) ;} ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 struct ad5592r_state* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ad5592r_state*,int*) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned offset)
{
	struct ad5592r_state *st = FUNC1(chip);
	int ret = 0;
	u8 val;

	FUNC2(&st->gpio_lock);

	if (st->gpio_out & FUNC0(offset))
		val = st->gpio_val;
	else
		ret = st->ops->gpio_read(st, &val);

	FUNC3(&st->gpio_lock);

	if (ret < 0)
		return ret;

	return !!(val & FUNC0(offset));
}