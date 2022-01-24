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
struct inv_mpu6050_state {int powerup_count; int /*<<< orphan*/  map; TYPE_1__* reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  pwr_mgmt_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  INV_MPU6050_BIT_SLEEP ; 
 int /*<<< orphan*/  INV_MPU6050_REG_UP_TIME_MAX ; 
 int /*<<< orphan*/  INV_MPU6050_REG_UP_TIME_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct inv_mpu6050_state *st, bool power_on)
{
	int result;

	if (power_on) {
		if (!st->powerup_count) {
			result = FUNC2(st->map, st->reg->pwr_mgmt_1, 0);
			if (result)
				return result;
			FUNC3(INV_MPU6050_REG_UP_TIME_MIN,
				     INV_MPU6050_REG_UP_TIME_MAX);
		}
		st->powerup_count++;
	} else {
		if (st->powerup_count == 1) {
			result = FUNC2(st->map, st->reg->pwr_mgmt_1,
					      INV_MPU6050_BIT_SLEEP);
			if (result)
				return result;
		}
		st->powerup_count--;
	}

	FUNC0(FUNC1(st->map), "set power %d, count=%u\n",
		power_on, st->powerup_count);

	return 0;
}