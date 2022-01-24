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
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  timeout; } ;
struct mv64xxx_i2c_data {long rc; int aborting; int /*<<< orphan*/  lock; scalar_t__ block; TYPE_1__ adapter; int /*<<< orphan*/  state; int /*<<< orphan*/  waitq; } ;

/* Variables and functions */
 long ETIMEDOUT ; 
 int /*<<< orphan*/  MV64XXX_I2C_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mv64xxx_i2c_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 long FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mv64xxx_i2c_data *drv_data)
{
	long		time_left;
	unsigned long	flags;
	char		abort = 0;

	time_left = FUNC4(drv_data->waitq,
		!drv_data->block, drv_data->adapter.timeout);

	FUNC2(&drv_data->lock, flags);
	if (!time_left) { /* Timed out */
		drv_data->rc = -ETIMEDOUT;
		abort = 1;
	} else if (time_left < 0) { /* Interrupted/Error */
		drv_data->rc = time_left; /* errno value */
		abort = 1;
	}

	if (abort && drv_data->block) {
		drv_data->aborting = 1;
		FUNC3(&drv_data->lock, flags);

		time_left = FUNC4(drv_data->waitq,
			!drv_data->block, drv_data->adapter.timeout);

		if ((time_left <= 0) && drv_data->block) {
			drv_data->state = MV64XXX_I2C_STATE_IDLE;
			FUNC0(&drv_data->adapter.dev,
				"mv64xxx: I2C bus locked, block: %d, "
				"time_left: %d\n", drv_data->block,
				(int)time_left);
			FUNC1(drv_data);
		}
	} else
		FUNC3(&drv_data->lock, flags);
}