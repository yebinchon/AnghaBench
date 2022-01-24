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
struct regmap {int dummy; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct regmap* FUNC3 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct regmap*) ; 
 int /*<<< orphan*/  zpa2326_regmap_i2c_config ; 

__attribute__((used)) static int FUNC6(struct i2c_client          *client,
			     const struct i2c_device_id *i2c_id)
{
	struct regmap *regmap;

	regmap = FUNC3(client, &zpa2326_regmap_i2c_config);
	if (FUNC0(regmap)) {
		FUNC2(&client->dev, "failed to init registers map");
		return FUNC1(regmap);
	}

	return FUNC5(&client->dev, i2c_id->name, client->irq,
			     FUNC4(client), regmap);
}