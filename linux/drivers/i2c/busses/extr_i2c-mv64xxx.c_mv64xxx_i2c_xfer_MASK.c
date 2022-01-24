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
struct mv64xxx_i2c_data {int num_msgs; struct i2c_msg* msgs; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mv64xxx_i2c_data* FUNC1 (struct i2c_adapter*) ; 
 scalar_t__ FUNC2 (struct mv64xxx_i2c_data*) ; 
 int FUNC3 (struct mv64xxx_i2c_data*,struct i2c_msg*,int) ; 
 int FUNC4 (struct mv64xxx_i2c_data*) ; 

__attribute__((used)) static int
FUNC5(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
{
	struct mv64xxx_i2c_data *drv_data = FUNC1(adap);
	int rc, ret = num;

	FUNC0(drv_data->msgs != NULL);
	drv_data->msgs = msgs;
	drv_data->num_msgs = num;

	if (FUNC2(drv_data))
		rc = FUNC4(drv_data);
	else
		rc = FUNC3(drv_data, &msgs[0], num == 1);

	if (rc < 0)
		ret = rc;

	drv_data->num_msgs = 0;
	drv_data->msgs = NULL;

	return ret;
}