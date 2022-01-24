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
typedef  int /*<<< orphan*/  u16 ;
struct zx_gpio {int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct gpio_chip {unsigned int ngpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int EINVAL ; 
 scalar_t__ ZX_GPIO_DIR ; 
 scalar_t__ ZX_GPIO_DO0 ; 
 scalar_t__ ZX_GPIO_DO1 ; 
 struct zx_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *gc, unsigned offset,
		int value)
{
	struct zx_gpio *chip = FUNC1(gc);
	unsigned long flags;
	u16 gpiodir;

	if (offset >= gc->ngpio)
		return -EINVAL;

	FUNC2(&chip->lock, flags);
	gpiodir = FUNC4(chip->base + ZX_GPIO_DIR);
	gpiodir |= FUNC0(offset);
	FUNC5(gpiodir, chip->base + ZX_GPIO_DIR);

	if (value)
		FUNC5(FUNC0(offset), chip->base + ZX_GPIO_DO1);
	else
		FUNC5(FUNC0(offset), chip->base + ZX_GPIO_DO0);
	FUNC3(&chip->lock, flags);

	return 0;
}