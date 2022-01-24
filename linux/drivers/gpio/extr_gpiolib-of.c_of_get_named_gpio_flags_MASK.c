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
struct gpio_desc {int dummy; } ;
struct device_node {int dummy; } ;
typedef  enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int FUNC2 (struct gpio_desc*) ; 
 struct gpio_desc* FUNC3 (struct device_node*,char const*,int,int*) ; 

int FUNC4(struct device_node *np, const char *list_name,
			    int index, enum of_gpio_flags *flags)
{
	struct gpio_desc *desc;

	desc = FUNC3(np, list_name, index, flags);

	if (FUNC0(desc))
		return FUNC1(desc);
	else
		return FUNC2(desc);
}