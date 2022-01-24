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
struct device {int dummy; } ;
struct bmc150_accel_data {int /*<<< orphan*/  slope_dur; int /*<<< orphan*/  slope_thres; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMC150_ACCEL_REG_INT_5 ; 
 int /*<<< orphan*/  BMC150_ACCEL_REG_INT_6 ; 
 int /*<<< orphan*/  BMC150_ACCEL_SLOPE_DUR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct bmc150_accel_data *data)
{
	struct device *dev = FUNC2(data->regmap);
	int ret;

	ret = FUNC4(data->regmap, BMC150_ACCEL_REG_INT_6,
					data->slope_thres);
	if (ret < 0) {
		FUNC1(dev, "Error writing reg_int_6\n");
		return ret;
	}

	ret = FUNC3(data->regmap, BMC150_ACCEL_REG_INT_5,
				 BMC150_ACCEL_SLOPE_DUR_MASK, data->slope_dur);
	if (ret < 0) {
		FUNC1(dev, "Error updating reg_int_5\n");
		return ret;
	}

	FUNC0(dev, "%x %x\n", data->slope_thres, data->slope_dur);

	return ret;
}