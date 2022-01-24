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
struct i2c_algo_pcf_data {int dummy; } ;

/* Variables and functions */
 int I2C_M_REV_DIR_ADDR ; 
 unsigned char FUNC0 (struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_algo_pcf_data*,unsigned char) ; 

__attribute__((used)) static int FUNC2(struct i2c_algo_pcf_data *adap,
			 struct i2c_msg *msg)
{
	unsigned char addr = FUNC0(msg);

	if (msg->flags & I2C_M_REV_DIR_ADDR)
		addr ^= 1;
	FUNC1(adap, addr);

	return 0;
}