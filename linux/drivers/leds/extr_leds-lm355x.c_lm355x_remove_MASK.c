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
struct lm355x_reg_data {int /*<<< orphan*/  regno; } ;
struct lm355x_chip_data {size_t type; int /*<<< orphan*/  cdev_flash; int /*<<< orphan*/  cdev_torch; int /*<<< orphan*/  cdev_indicator; int /*<<< orphan*/  regmap; struct lm355x_reg_data* regs; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t REG_OPMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct lm355x_chip_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lm355x_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct lm355x_chip_data *chip = FUNC1(client);
	struct lm355x_reg_data *preg = chip->regs;

	FUNC3(chip->regmap, preg[REG_OPMODE].regno, 0);
	FUNC2(&chip->cdev_indicator);
	FUNC2(&chip->cdev_torch);
	FUNC2(&chip->cdev_flash);
	FUNC0(&client->dev, "%s is removed\n", lm355x_name[chip->type]);

	return 0;
}