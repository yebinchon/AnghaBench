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
struct mxc4005_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {int scale; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int MXC4005_CONTROL_FSR_SHIFT ; 
 int /*<<< orphan*/  MXC4005_REG_CONTROL ; 
 int /*<<< orphan*/  MXC4005_REG_CONTROL_MASK_FSR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* mxc4005_scale_table ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct mxc4005_data *data, int val)
{
	unsigned int reg;
	int i;
	int ret;

	for (i = 0; i < FUNC0(mxc4005_scale_table); i++) {
		if (mxc4005_scale_table[i].scale == val) {
			reg = i << MXC4005_CONTROL_FSR_SHIFT;
			ret = FUNC2(data->regmap,
						 MXC4005_REG_CONTROL,
						 MXC4005_REG_CONTROL_MASK_FSR,
						 reg);
			if (ret < 0)
				FUNC1(data->dev,
					"failed to write reg_control\n");
			return ret;
		}
	}

	return -EINVAL;
}