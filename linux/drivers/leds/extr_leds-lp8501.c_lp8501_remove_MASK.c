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
struct lp55xx_led {struct lp55xx_chip* chip; } ;
struct lp55xx_chip {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct lp55xx_led* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct lp55xx_led*,struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct lp55xx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct lp55xx_chip*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct lp55xx_led *led = FUNC0(client);
	struct lp55xx_chip *chip = led->chip;

	FUNC4(chip);
	FUNC3(chip);
	FUNC2(led, chip);
	FUNC1(chip);

	return 0;
}