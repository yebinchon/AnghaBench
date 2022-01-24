#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pca953x_platform_data {int (* teardown ) (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  context; } ;
struct TYPE_2__ {int /*<<< orphan*/  ngpio; int /*<<< orphan*/  base; } ;
struct pca953x_chip {int /*<<< orphan*/  regulator; TYPE_1__ gpio_chip; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct pca953x_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 struct pca953x_chip* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct pca953x_platform_data *pdata = FUNC1(&client->dev);
	struct pca953x_chip *chip = FUNC2(client);
	int ret;

	if (pdata && pdata->teardown) {
		ret = pdata->teardown(client, chip->gpio_chip.base,
				chip->gpio_chip.ngpio, pdata->context);
		if (ret < 0)
			FUNC0(&client->dev, "teardown failed, %d\n", ret);
	} else {
		ret = 0;
	}

	FUNC3(chip->regulator);

	return ret;
}