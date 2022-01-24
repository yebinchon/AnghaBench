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
struct gpio_chip {int /*<<< orphan*/  label; } ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_IS_HOGGED ; 
 int GPIOD_FLAGS_BIT_DIR_OUT ; 
 int GPIOD_FLAGS_BIT_DIR_VAL ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_desc*) ; 
 int FUNC3 (struct gpio_desc*) ; 
 struct gpio_desc* FUNC4 (struct gpio_chip*,int,char const*,unsigned long,int) ; 
 struct gpio_chip* FUNC5 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct gpio_desc *desc, const char *name,
	      unsigned long lflags, enum gpiod_flags dflags)
{
	struct gpio_chip *chip;
	struct gpio_desc *local_desc;
	int hwnum;
	int ret;

	chip = FUNC5(desc);
	hwnum = FUNC3(desc);

	local_desc = FUNC4(chip, hwnum, name,
					       lflags, dflags);
	if (FUNC0(local_desc)) {
		ret = FUNC1(local_desc);
		FUNC6("requesting hog GPIO %s (chip %s, offset %d) failed, %d\n",
		       name, chip->label, hwnum, ret);
		return ret;
	}

	/* Mark GPIO as hogged so it can be identified and removed later */
	FUNC8(FLAG_IS_HOGGED, &desc->flags);

	FUNC7("GPIO line %d (%s) hogged as %s%s\n",
		FUNC2(desc), name,
		(dflags&GPIOD_FLAGS_BIT_DIR_OUT) ? "output" : "input",
		(dflags&GPIOD_FLAGS_BIT_DIR_OUT) ?
		  (dflags&GPIOD_FLAGS_BIT_DIR_VAL) ? "/high" : "/low":"");

	return 0;
}