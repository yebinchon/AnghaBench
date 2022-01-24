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
struct i2c_msg {int flags; } ;
struct i2c_adapter {int dummy; } ;
struct dibx000_i2c_master {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIBX000_I2C_INTERFACE_GPIO_3_4 ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (struct dibx000_i2c_master*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dibx000_i2c_master*,struct i2c_msg*) ; 
 int FUNC2 (struct dibx000_i2c_master*,struct i2c_msg*,int) ; 
 struct dibx000_i2c_master* FUNC3 (struct i2c_adapter*) ; 

__attribute__((used)) static int FUNC4(struct i2c_adapter *i2c_adap, struct i2c_msg msg[], int num)
{
	struct dibx000_i2c_master *mst = FUNC3(i2c_adap);
	int msg_index;
	int ret = 0;

	FUNC0(mst, DIBX000_I2C_INTERFACE_GPIO_3_4);
	for (msg_index = 0; msg_index < num; msg_index++) {
		if (msg[msg_index].flags & I2C_M_RD) {
			ret = FUNC1(mst, &msg[msg_index]);
			if (ret != 0)
				return 0;
		} else {
			ret = FUNC2(mst, &msg[msg_index], 1);
			if (ret != 0)
				return 0;
		}
	}

	return num;
}