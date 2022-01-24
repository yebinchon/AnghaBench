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
struct regmap_config {int reg_bits; int val_bits; int max_register; } ;
struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct regmap* FUNC3 (struct i2c_client*,struct regmap_config const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *i2c,
			   const struct i2c_device_id *id)
{
	static const struct regmap_config config = {
		.reg_bits = 8,
		.val_bits = 8,
		.max_register = 0x0e,
	};
	struct regmap *regmap;

	regmap = FUNC3(i2c, &config);
	if (FUNC0(regmap)) {
		FUNC2(&i2c->dev, "Failed to register i2c regmap %d\n",
			(int)FUNC1(regmap));
		return FUNC1(regmap);
	}

	return FUNC4(&i2c->dev,
				  regmap,
				  i2c->name);
}