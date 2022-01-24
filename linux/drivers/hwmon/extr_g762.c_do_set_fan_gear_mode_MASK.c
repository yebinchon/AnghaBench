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
struct g762_data {int valid; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  fan_cmd2; int /*<<< orphan*/  client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  G762_REG_FAN_CMD2 ; 
 int /*<<< orphan*/  G762_REG_FAN_CMD2_GEAR_MODE_0 ; 
 int /*<<< orphan*/  G762_REG_FAN_CMD2_GEAR_MODE_1 ; 
 scalar_t__ FUNC0 (struct g762_data*) ; 
 int FUNC1 (struct g762_data*) ; 
 struct g762_data* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev, unsigned long val)
{
	struct g762_data *data = FUNC2(dev);
	int ret;

	if (FUNC0(data))
		return FUNC1(data);

	FUNC4(&data->update_lock);
	switch (val) {
	case 0:
		data->fan_cmd2 &= ~G762_REG_FAN_CMD2_GEAR_MODE_0;
		data->fan_cmd2 &= ~G762_REG_FAN_CMD2_GEAR_MODE_1;
		break;
	case 1:
		data->fan_cmd2 |=  G762_REG_FAN_CMD2_GEAR_MODE_0;
		data->fan_cmd2 &= ~G762_REG_FAN_CMD2_GEAR_MODE_1;
		break;
	case 2:
		data->fan_cmd2 &= ~G762_REG_FAN_CMD2_GEAR_MODE_0;
		data->fan_cmd2 |=  G762_REG_FAN_CMD2_GEAR_MODE_1;
		break;
	default:
		ret = -EINVAL;
		goto out;
	}
	ret = FUNC3(data->client, G762_REG_FAN_CMD2,
					data->fan_cmd2);
	data->valid = false;
 out:
	FUNC5(&data->update_lock);

	return ret;
}