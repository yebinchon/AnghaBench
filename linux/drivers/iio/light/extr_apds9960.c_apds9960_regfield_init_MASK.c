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
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct apds9960_data {void* reg_enable_pxs; void* reg_enable_ges; void* reg_enable_als; void* reg_int_pxs; void* reg_int_ges; void* reg_int_als; struct regmap* regmap; TYPE_1__* client; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  apds9960_reg_field_enable_als ; 
 int /*<<< orphan*/  apds9960_reg_field_enable_ges ; 
 int /*<<< orphan*/  apds9960_reg_field_enable_pxs ; 
 int /*<<< orphan*/  apds9960_reg_field_int_als ; 
 int /*<<< orphan*/  apds9960_reg_field_int_ges ; 
 int /*<<< orphan*/  apds9960_reg_field_int_pxs ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,struct regmap*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct apds9960_data *data)
{
	struct device *dev = &data->client->dev;
	struct regmap *regmap = data->regmap;

	data->reg_int_als = FUNC3(dev, regmap,
						apds9960_reg_field_int_als);
	if (FUNC0(data->reg_int_als)) {
		FUNC2(dev, "INT ALS reg field init failed\n");
		return FUNC1(data->reg_int_als);
	}

	data->reg_int_ges = FUNC3(dev, regmap,
						apds9960_reg_field_int_ges);
	if (FUNC0(data->reg_int_ges)) {
		FUNC2(dev, "INT gesture reg field init failed\n");
		return FUNC1(data->reg_int_ges);
	}

	data->reg_int_pxs = FUNC3(dev, regmap,
						apds9960_reg_field_int_pxs);
	if (FUNC0(data->reg_int_pxs)) {
		FUNC2(dev, "INT pxs reg field init failed\n");
		return FUNC1(data->reg_int_pxs);
	}

	data->reg_enable_als = FUNC3(dev, regmap,
						apds9960_reg_field_enable_als);
	if (FUNC0(data->reg_enable_als)) {
		FUNC2(dev, "Enable ALS reg field init failed\n");
		return FUNC1(data->reg_enable_als);
	}

	data->reg_enable_ges = FUNC3(dev, regmap,
						apds9960_reg_field_enable_ges);
	if (FUNC0(data->reg_enable_ges)) {
		FUNC2(dev, "Enable gesture reg field init failed\n");
		return FUNC1(data->reg_enable_ges);
	}

	data->reg_enable_pxs = FUNC3(dev, regmap,
						apds9960_reg_field_enable_pxs);
	if (FUNC0(data->reg_enable_pxs)) {
		FUNC2(dev, "Enable PXS reg field init failed\n");
		return FUNC1(data->reg_enable_pxs);
	}

	return 0;
}