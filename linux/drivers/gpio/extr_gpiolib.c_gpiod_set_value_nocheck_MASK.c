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
struct gpio_desc {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_ACTIVE_LOW ; 
 int /*<<< orphan*/  FLAG_OPEN_DRAIN ; 
 int /*<<< orphan*/  FLAG_OPEN_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_desc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_desc*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gpio_desc *desc, int value)
{
	if (FUNC3(FLAG_ACTIVE_LOW, &desc->flags))
		value = !value;
	if (FUNC3(FLAG_OPEN_DRAIN, &desc->flags))
		FUNC0(desc, value);
	else if (FUNC3(FLAG_OPEN_SOURCE, &desc->flags))
		FUNC1(desc, value);
	else
		FUNC2(desc, value);
}