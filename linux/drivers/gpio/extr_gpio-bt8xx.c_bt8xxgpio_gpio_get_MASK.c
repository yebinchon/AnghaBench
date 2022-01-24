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
struct gpio_chip {int dummy; } ;
struct bt8xxgpio {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_GPIO_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct bt8xxgpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *gpio, unsigned nr)
{
	struct bt8xxgpio *bg = FUNC1(gpio);
	unsigned long flags;
	u32 val;

	FUNC2(&bg->lock, flags);
	val = FUNC0(BT848_GPIO_DATA);
	FUNC3(&bg->lock, flags);

	return !!(val & (1 << nr));
}