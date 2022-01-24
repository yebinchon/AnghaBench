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
struct regmap_config {int reg_bits; int val_bits; } ;
struct regmap {int dummy; } ;
struct i3c_device_id {scalar_t__ data; } ;
struct i3c_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct regmap* FUNC3 (struct i3c_device*,struct regmap_config*) ; 
 struct i3c_device_id* FUNC4 (struct i3c_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  st_lsm6dsx_i3c_ids ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,uintptr_t,struct regmap*) ; 

__attribute__((used)) static int FUNC6(struct i3c_device *i3cdev)
{
	struct regmap_config st_lsm6dsx_i3c_regmap_config = {
		.reg_bits = 8,
		.val_bits = 8,
	};
	const struct i3c_device_id *id = FUNC4(i3cdev,
							    st_lsm6dsx_i3c_ids);
	struct regmap *regmap;

	regmap = FUNC3(i3cdev, &st_lsm6dsx_i3c_regmap_config);
	if (FUNC0(regmap)) {
		FUNC2(&i3cdev->dev, "Failed to register i3c regmap %d\n",
			(int)FUNC1(regmap));
		return FUNC1(regmap);
	}

	return FUNC5(&i3cdev->dev, 0, (uintptr_t)id->data, regmap);
}