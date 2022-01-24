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
struct bmg160_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int BMG160_DATA_ENABLE_INT ; 
 int /*<<< orphan*/  BMG160_INT_MAP_1_BIT_NEW_DATA ; 
 int BMG160_INT_MODE_LATCH_INT ; 
 int BMG160_INT_MODE_LATCH_RESET ; 
 int BMG160_INT_MODE_NON_LATCH_INT ; 
 int /*<<< orphan*/  BMG160_REG_INT_EN_0 ; 
 int /*<<< orphan*/  BMG160_REG_INT_MAP_1 ; 
 int /*<<< orphan*/  BMG160_REG_INT_RST_LATCH ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct bmg160_data *data,
					   bool status)
{
	struct device *dev = FUNC1(data->regmap);
	int ret;

	/* Enable/Disable INT_MAP1 mapping */
	ret = FUNC2(data->regmap, BMG160_REG_INT_MAP_1,
				 BMG160_INT_MAP_1_BIT_NEW_DATA,
				 (status ? BMG160_INT_MAP_1_BIT_NEW_DATA : 0));
	if (ret < 0) {
		FUNC0(dev, "Error updating bits in reg_int_map1\n");
		return ret;
	}

	if (status) {
		ret = FUNC3(data->regmap, BMG160_REG_INT_RST_LATCH,
				   BMG160_INT_MODE_NON_LATCH_INT |
				   BMG160_INT_MODE_LATCH_RESET);
		if (ret < 0) {
			FUNC0(dev, "Error writing reg_rst_latch\n");
			return ret;
		}

		ret = FUNC3(data->regmap, BMG160_REG_INT_EN_0,
				   BMG160_DATA_ENABLE_INT);

	} else {
		/* Restore interrupt mode */
		ret = FUNC3(data->regmap, BMG160_REG_INT_RST_LATCH,
				   BMG160_INT_MODE_LATCH_INT |
				   BMG160_INT_MODE_LATCH_RESET);
		if (ret < 0) {
			FUNC0(dev, "Error writing reg_rst_latch\n");
			return ret;
		}

		ret = FUNC3(data->regmap, BMG160_REG_INT_EN_0, 0);
	}

	if (ret < 0) {
		FUNC0(dev, "Error writing reg_int_en0\n");
		return ret;
	}

	return 0;
}