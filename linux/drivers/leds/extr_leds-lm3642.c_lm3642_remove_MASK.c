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
struct lm3642_chip_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/  cdev_flash; int /*<<< orphan*/  cdev_torch; int /*<<< orphan*/  cdev_indicator; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_ENABLE ; 
 struct lm3642_chip_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct lm3642_chip_data *chip = FUNC0(client);

	FUNC1(&chip->cdev_indicator);
	FUNC1(&chip->cdev_torch);
	FUNC1(&chip->cdev_flash);
	FUNC2(chip->regmap, REG_ENABLE, 0);
	return 0;
}