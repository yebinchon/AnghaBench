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

/* Variables and functions */
 int I2C_M_RD ; 
 int FUNC0 (struct i2c_adapter*,struct i2c_msg*,int) ; 
 int FUNC1 (struct i2c_adapter*,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_adapter *adap,
			struct i2c_msg msgs[],
			int num)
{
	struct i2c_msg *pmsg;
	int i, is_last;
	int ret = 0;

	for (i = 0; ret >= 0 && i < num; i++) {
		is_last = ((i + 1) == num);

		pmsg = &msgs[i];
		if (pmsg->flags & I2C_M_RD)
			ret = FUNC0(adap, pmsg, is_last);
		else
			ret = FUNC1(adap, pmsg, is_last);
	}

	return (ret < 0) ? ret : i;
}