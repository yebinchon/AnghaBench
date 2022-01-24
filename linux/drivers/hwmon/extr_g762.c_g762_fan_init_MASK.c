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
struct g762_data {int valid; int /*<<< orphan*/  fan_cmd1; int /*<<< orphan*/  client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  G762_REG_FAN_CMD1 ; 
 int /*<<< orphan*/  G762_REG_FAN_CMD1_DET_FAN_FAIL ; 
 int /*<<< orphan*/  G762_REG_FAN_CMD1_DET_FAN_OOC ; 
 scalar_t__ FUNC0 (struct g762_data*) ; 
 int FUNC1 (struct g762_data*) ; 
 struct g762_data* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct device *dev)
{
	struct g762_data *data = FUNC2(dev);

	if (FUNC0(data))
		return FUNC1(data);

	data->fan_cmd1 |= G762_REG_FAN_CMD1_DET_FAN_FAIL;
	data->fan_cmd1 |= G762_REG_FAN_CMD1_DET_FAN_OOC;
	data->valid = false;

	return FUNC3(data->client, G762_REG_FAN_CMD1,
					 data->fan_cmd1);
}