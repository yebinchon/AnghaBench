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
struct gpio_chip {int /*<<< orphan*/  parent; } ;
struct arizona_gpio {struct arizona* arizona; } ;
struct arizona {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int ARIZONA_GPIO1_CTRL ; 
 unsigned int ARIZONA_GPN_DIR ; 
 unsigned int ARIZONA_GPN_LVL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct arizona_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip, unsigned offset)
{
	struct arizona_gpio *arizona_gpio = FUNC1(chip);
	struct arizona *arizona = arizona_gpio->arizona;
	unsigned int reg, val;
	int ret;

	reg = ARIZONA_GPIO1_CTRL + offset;
	ret = FUNC6(arizona->regmap, reg, &val);
	if (ret < 0)
		return ret;

	/* Resume to read actual registers for input pins */
	if (val & ARIZONA_GPN_DIR) {
		ret = FUNC2(chip->parent);
		if (ret < 0) {
			FUNC0(chip->parent, "Failed to resume: %d\n", ret);
			return ret;
		}

		/* Register is cached, drop it to ensure a physical read */
		ret = FUNC5(arizona->regmap, reg, reg);
		if (ret < 0) {
			FUNC0(chip->parent, "Failed to drop cache: %d\n",
				ret);
			return ret;
		}

		ret = FUNC6(arizona->regmap, reg, &val);
		if (ret < 0)
			return ret;

		FUNC3(chip->parent);
		FUNC4(chip->parent);
	}

	if (val & ARIZONA_GPN_LVL)
		return 1;
	else
		return 0;
}