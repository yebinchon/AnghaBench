#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct bmg160_data {int /*<<< orphan*/  dps_range; int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {int scale; int /*<<< orphan*/  dps_range; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  BMG160_REG_RANGE ; 
 int EINVAL ; 
 TYPE_1__* bmg160_scale_table ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct bmg160_data *data, int val)
{
	struct device *dev = FUNC2(data->regmap);
	int ret, i;

	for (i = 0; i < FUNC0(bmg160_scale_table); ++i) {
		if (bmg160_scale_table[i].scale == val) {
			ret = FUNC3(data->regmap, BMG160_REG_RANGE,
					   bmg160_scale_table[i].dps_range);
			if (ret < 0) {
				FUNC1(dev, "Error writing reg_range\n");
				return ret;
			}
			data->dps_range = bmg160_scale_table[i].dps_range;
			return 0;
		}
	}

	return -EINVAL;
}