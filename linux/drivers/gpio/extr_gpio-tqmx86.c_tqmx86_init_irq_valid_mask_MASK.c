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
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 

__attribute__((used)) static void FUNC1(struct gpio_chip *chip,
				       unsigned long *valid_mask,
				       unsigned int ngpios)
{
	/* Only GPIOs 4-7 are valid for interrupts. Clear the others */
	FUNC0(0, valid_mask);
	FUNC0(1, valid_mask);
	FUNC0(2, valid_mask);
	FUNC0(3, valid_mask);
}