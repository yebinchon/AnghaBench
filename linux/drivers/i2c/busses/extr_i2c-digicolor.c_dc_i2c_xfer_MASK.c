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
struct i2c_msg {int dummy; } ;
struct i2c_adapter {struct dc_i2c* algo_data; } ;
struct dc_i2c {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dc_i2c*,struct i2c_msg*,int,int) ; 

__attribute__((used)) static int FUNC1(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
	struct dc_i2c *i2c = adap->algo_data;
	int i, ret;

	for (i = 0; i < num; i++) {
		ret = FUNC0(i2c, &msgs[i], i == 0, i == num - 1);
		if (ret)
			return ret;
	}

	return num;
}