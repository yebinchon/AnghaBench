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
struct pt_gpio_chip {scalar_t__ reg_base; } ;
struct gpio_chip {int /*<<< orphan*/  bgpio_lock; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 scalar_t__ PT_SYNC_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct pt_gpio_chip* FUNC3 (struct gpio_chip*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct gpio_chip *gc, unsigned offset)
{
	struct pt_gpio_chip *pt_gpio = FUNC3(gc);
	unsigned long flags;
	u32 using_pins;

	FUNC1(gc->parent, "pt_gpio_request offset=%x\n", offset);

	FUNC5(&gc->bgpio_lock, flags);

	using_pins = FUNC4(pt_gpio->reg_base + PT_SYNC_REG);
	if (using_pins & FUNC0(offset)) {
		FUNC2(gc->parent, "PT GPIO pin %x reconfigured\n",
			 offset);
		FUNC6(&gc->bgpio_lock, flags);
		return -EINVAL;
	}

	FUNC7(using_pins | FUNC0(offset), pt_gpio->reg_base + PT_SYNC_REG);

	FUNC6(&gc->bgpio_lock, flags);

	return 0;
}