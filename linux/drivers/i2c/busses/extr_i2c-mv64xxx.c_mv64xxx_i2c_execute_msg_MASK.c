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
struct mv64xxx_i2c_data {int send_stop; int block; int rc; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
struct i2c_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MV64XXX_I2C_STATE_WAITING_FOR_START_COND ; 
 int /*<<< orphan*/  FUNC0 (struct mv64xxx_i2c_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv64xxx_i2c_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct mv64xxx_i2c_data *drv_data, struct i2c_msg *msg,
				int is_last)
{
	unsigned long	flags;

	FUNC2(&drv_data->lock, flags);

	drv_data->state = MV64XXX_I2C_STATE_WAITING_FOR_START_COND;

	drv_data->send_stop = is_last;
	drv_data->block = 1;
	FUNC0(drv_data);
	FUNC3(&drv_data->lock, flags);

	FUNC1(drv_data);
	return drv_data->rc;
}