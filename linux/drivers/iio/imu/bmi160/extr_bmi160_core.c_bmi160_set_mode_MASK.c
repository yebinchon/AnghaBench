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
typedef  int /*<<< orphan*/  u8 ;
struct bmi160_data {int /*<<< orphan*/  regmap; } ;
typedef  enum bmi160_sensor_type { ____Placeholder_bmi160_sensor_type } bmi160_sensor_type ;
struct TYPE_2__ {int /*<<< orphan*/  pmu_cmd_suspend; int /*<<< orphan*/  pmu_cmd_normal; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMI160_REG_CMD ; 
 scalar_t__* bmi160_pmu_time ; 
 TYPE_1__* bmi160_regs ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static
int FUNC2(struct bmi160_data *data, enum bmi160_sensor_type t,
		    bool mode)
{
	int ret;
	u8 cmd;

	if (mode)
		cmd = bmi160_regs[t].pmu_cmd_normal;
	else
		cmd = bmi160_regs[t].pmu_cmd_suspend;

	ret = FUNC0(data->regmap, BMI160_REG_CMD, cmd);
	if (ret)
		return ret;

	FUNC1(bmi160_pmu_time[t], bmi160_pmu_time[t] + 1000);

	return 0;
}