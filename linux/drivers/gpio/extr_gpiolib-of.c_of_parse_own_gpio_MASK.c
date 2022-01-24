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
typedef  unsigned int u32 ;
struct of_phandle_args {unsigned int args_count; int /*<<< orphan*/ * args; struct device_node* np; } ;
struct gpio_desc {int dummy; } ;
struct gpio_chip {struct device_node* of_node; } ;
struct device_node {char* name; } ;
typedef  enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;

/* Variables and functions */
 int EINVAL ; 
 struct gpio_desc* FUNC0 (int) ; 
 int GPIOD_IN ; 
 int GPIOD_OUT_HIGH ; 
 int GPIOD_OUT_LOW ; 
 unsigned long GPIO_ACTIVE_LOW ; 
 unsigned long GPIO_LOOKUP_FLAGS_DEFAULT ; 
 unsigned long GPIO_TRANSITORY ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 int OF_GPIO_ACTIVE_LOW ; 
 int OF_GPIO_TRANSITORY ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_desc*) ; 
 scalar_t__ FUNC3 (struct device_node*,char*) ; 
 scalar_t__ FUNC4 (struct device_node*,char*,char const**) ; 
 int FUNC5 (struct device_node*,char*,unsigned int*) ; 
 int FUNC6 (struct device_node*,char*,unsigned int,int /*<<< orphan*/ *) ; 
 struct gpio_desc* FUNC7 (struct gpio_chip*,struct of_phandle_args*,int*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,struct device_node*) ; 

__attribute__((used)) static struct gpio_desc *FUNC9(struct device_node *np,
					   struct gpio_chip *chip,
					   unsigned int idx, const char **name,
					   unsigned long *lflags,
					   enum gpiod_flags *dflags)
{
	struct device_node *chip_np;
	enum of_gpio_flags xlate_flags;
	struct of_phandle_args gpiospec;
	struct gpio_desc *desc;
	unsigned int i;
	u32 tmp;
	int ret;

	chip_np = chip->of_node;
	if (!chip_np)
		return FUNC0(-EINVAL);

	xlate_flags = 0;
	*lflags = GPIO_LOOKUP_FLAGS_DEFAULT;
	*dflags = 0;

	ret = FUNC5(chip_np, "#gpio-cells", &tmp);
	if (ret)
		return FUNC0(ret);

	gpiospec.np = chip_np;
	gpiospec.args_count = tmp;

	for (i = 0; i < tmp; i++) {
		ret = FUNC6(np, "gpios", idx * tmp + i,
						 &gpiospec.args[i]);
		if (ret)
			return FUNC0(ret);
	}

	desc = FUNC7(chip, &gpiospec, &xlate_flags);
	if (FUNC1(desc))
		return desc;

	if (xlate_flags & OF_GPIO_ACTIVE_LOW)
		*lflags |= GPIO_ACTIVE_LOW;
	if (xlate_flags & OF_GPIO_TRANSITORY)
		*lflags |= GPIO_TRANSITORY;

	if (FUNC3(np, "input"))
		*dflags |= GPIOD_IN;
	else if (FUNC3(np, "output-low"))
		*dflags |= GPIOD_OUT_LOW;
	else if (FUNC3(np, "output-high"))
		*dflags |= GPIOD_OUT_HIGH;
	else {
		FUNC8("GPIO line %d (%pOFn): no hogging state specified, bailing out\n",
			FUNC2(desc), np);
		return FUNC0(-EINVAL);
	}

	if (name && FUNC4(np, "line-name", name))
		*name = np->name;

	return desc;
}