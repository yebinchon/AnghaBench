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
struct xway_stp {int reserved; } ;
struct gpio_chip {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct xway_stp* FUNC2 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned gpio)
{
	struct xway_stp *chip = FUNC2(gc);

	if ((gpio < 8) && (chip->reserved & FUNC0(gpio))) {
		FUNC1(gc->parent, "GPIO %d is driven by hardware\n", gpio);
		return -ENODEV;
	}

	return 0;
}