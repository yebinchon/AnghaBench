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
 int FUNC2 (struct gpio_chip*,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip,
				     unsigned offset, int value)
{
	struct arizona_gpio *arizona_gpio = FUNC1(chip);
	struct arizona *arizona = arizona_gpio->arizona;
	bool persistent = FUNC2(chip, offset);
	unsigned int val;
	int ret;

	ret = FUNC4(arizona->regmap, ARIZONA_GPIO1_CTRL + offset, &val);
	if (ret < 0)
		return ret;

	if ((val & ARIZONA_GPN_DIR) && persistent) {
		ret = FUNC3(chip->parent);
		if (ret < 0) {
			FUNC0(chip->parent, "Failed to resume: %d\n", ret);
			return ret;
		}
	}

	if (value)
		value = ARIZONA_GPN_LVL;

	return FUNC5(arizona->regmap, ARIZONA_GPIO1_CTRL + offset,
				  ARIZONA_GPN_DIR | ARIZONA_GPN_LVL, value);
}