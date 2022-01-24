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
typedef  int /*<<< orphan*/  u32 ;
struct mb86s70_gpio_chip {int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 struct mb86s70_gpio_chip* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct gpio_chip *gc, unsigned gpio)
{
	struct mb86s70_gpio_chip *gchip = FUNC2(gc);
	unsigned long flags;
	u32 val;

	FUNC4(&gchip->lock, flags);

	val = FUNC3(gchip->base + FUNC1(gpio));
	val |= FUNC0(gpio);
	FUNC6(val, gchip->base + FUNC1(gpio));

	FUNC5(&gchip->lock, flags);
}