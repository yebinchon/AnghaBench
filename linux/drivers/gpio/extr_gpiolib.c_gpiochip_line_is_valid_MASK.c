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
struct gpio_chip {int /*<<< orphan*/  valid_mask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

bool FUNC2(const struct gpio_chip *gpiochip,
				unsigned int offset)
{
	/* No mask means all valid */
	if (FUNC0(!gpiochip->valid_mask))
		return true;
	return FUNC1(offset, gpiochip->valid_mask);
}