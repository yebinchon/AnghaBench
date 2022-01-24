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
struct i2c_device_id {char* name; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  bmg160_regmap_i2c_conf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct regmap* FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	struct regmap *regmap;
	const char *name = NULL;

	regmap = FUNC4(client, &bmg160_regmap_i2c_conf);
	if (FUNC0(regmap)) {
		FUNC3(&client->dev, "Failed to register i2c regmap %d\n",
			(int)FUNC1(regmap));
		return FUNC1(regmap);
	}

	if (id)
		name = id->name;

	return FUNC2(&client->dev, regmap, client->irq, name);
}