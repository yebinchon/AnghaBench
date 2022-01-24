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

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SPI_MASTER ; 
 int /*<<< orphan*/  ENOENT ; 
 struct gpio_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 struct gpio_desc* FUNC3 (struct device*,int /*<<< orphan*/ *,unsigned int,unsigned long*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static struct gpio_desc *FUNC5(struct device *dev,
					     const char *con_id,
					     unsigned int idx,
					     unsigned long *flags)
{
	struct device_node *np = dev->of_node;

	if (!FUNC1(CONFIG_SPI_MASTER))
		return FUNC0(-ENOENT);

	/* Allow this specifically for Freescale devices */
	if (!FUNC2(np, "fsl,spi") &&
	    !FUNC2(np, "aeroflexgaisler,spictrl"))
		return FUNC0(-ENOENT);
	/* Allow only if asking for "cs-gpios" */
	if (!con_id || FUNC4(con_id, "cs"))
		return FUNC0(-ENOENT);

	/*
	 * While all other SPI controllers use "cs-gpios" the Freescale
	 * uses just "gpios" so translate to that when "cs-gpios" is
	 * requested.
	 */
	return FUNC3(dev, NULL, idx, flags);
}