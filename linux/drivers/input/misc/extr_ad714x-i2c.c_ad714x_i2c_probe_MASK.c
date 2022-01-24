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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct ad714x_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_I2C ; 
 scalar_t__ FUNC0 (struct ad714x_chip*) ; 
 int FUNC1 (struct ad714x_chip*) ; 
 int /*<<< orphan*/  ad714x_i2c_read ; 
 int /*<<< orphan*/  ad714x_i2c_write ; 
 struct ad714x_chip* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct ad714x_chip*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
					const struct i2c_device_id *id)
{
	struct ad714x_chip *chip;

	chip = FUNC2(&client->dev, BUS_I2C, client->irq,
			    ad714x_i2c_read, ad714x_i2c_write);
	if (FUNC0(chip))
		return FUNC1(chip);

	FUNC3(client, chip);

	return 0;
}