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
 int /*<<< orphan*/  ARIZONA_GPN_DIR ; 
 struct arizona_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (struct gpio_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned offset)
{
	struct arizona_gpio *arizona_gpio = FUNC0(chip);
	struct arizona *arizona = arizona_gpio->arizona;
	bool persistent = FUNC1(chip, offset);
	bool change;
	int ret;

	ret = FUNC4(arizona->regmap,
				       ARIZONA_GPIO1_CTRL + offset,
				       ARIZONA_GPN_DIR, ARIZONA_GPN_DIR,
				       &change);
	if (ret < 0)
		return ret;

	if (change && persistent) {
		FUNC2(chip->parent);
		FUNC3(chip->parent);
	}

	return 0;
}