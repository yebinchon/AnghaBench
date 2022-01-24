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
struct gpio_desc {int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_desc*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 

int FUNC4(struct gpio_desc *desc, const char *name)
{
	FUNC0(desc);
	if (name) {
		name = FUNC3(name, GFP_KERNEL);
		if (!name)
			return -ENOMEM;
	}

	FUNC2(desc->label);
	FUNC1(desc, name);

	return 0;
}