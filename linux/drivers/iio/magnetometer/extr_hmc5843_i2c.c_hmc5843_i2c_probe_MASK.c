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
struct i2c_device_id {int /*<<< orphan*/  name; int /*<<< orphan*/  driver_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 struct regmap* FUNC2 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hmc5843_i2c_regmap_config ; 

__attribute__((used)) static int FUNC4(struct i2c_client *cli,
			     const struct i2c_device_id *id)
{
	struct regmap *regmap = FUNC2(cli,
			&hmc5843_i2c_regmap_config);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	return FUNC3(&cli->dev,
			regmap,
			id->driver_data, id->name);
}