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
struct gpio_chip {int /*<<< orphan*/  ngpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long *FUNC2(struct gpio_chip *chip)
{
	unsigned long *p;

	p = FUNC0(chip->ngpio, GFP_KERNEL);
	if (!p)
		return NULL;

	/* Assume by default all GPIOs are valid */
	FUNC1(p, chip->ngpio);

	return p;
}