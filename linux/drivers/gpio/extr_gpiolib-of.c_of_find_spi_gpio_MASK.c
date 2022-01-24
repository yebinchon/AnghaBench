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
struct device {struct device_node* of_node; } ;
typedef  int /*<<< orphan*/  prop_name ;
typedef  enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SPI_MASTER ; 
 int /*<<< orphan*/  ENOENT ; 
 struct gpio_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 struct gpio_desc* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char const*) ; 

__attribute__((used)) static struct gpio_desc *FUNC5(struct device *dev, const char *con_id,
					  enum of_gpio_flags *of_flags)
{
	char prop_name[32]; /* 32 is max size of property name */
	struct device_node *np = dev->of_node;
	struct gpio_desc *desc;

	/*
	 * Hopefully the compiler stubs the rest of the function if this
	 * is false.
	 */
	if (!FUNC1(CONFIG_SPI_MASTER))
		return FUNC0(-ENOENT);

	/* Allow this specifically for "spi-gpio" devices */
	if (!FUNC2(np, "spi-gpio") || !con_id)
		return FUNC0(-ENOENT);

	/* Will be "gpio-sck", "gpio-mosi" or "gpio-miso" */
	FUNC4(prop_name, sizeof(prop_name), "%s-%s", "gpio", con_id);

	desc = FUNC3(np, prop_name, 0, of_flags);
	return desc;
}