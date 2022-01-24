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
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct regmap* FUNC3 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fxas21002c_regmap_i2c_conf ; 

__attribute__((used)) static int FUNC5(struct i2c_client *i2c)
{
	struct regmap *regmap;

	regmap = FUNC3(i2c, &fxas21002c_regmap_i2c_conf);
	if (FUNC0(regmap)) {
		FUNC2(&i2c->dev, "Failed to register i2c regmap: %ld\n",
			FUNC1(regmap));
		return FUNC1(regmap);
	}

	return FUNC4(&i2c->dev, regmap, i2c->irq, i2c->name);
}