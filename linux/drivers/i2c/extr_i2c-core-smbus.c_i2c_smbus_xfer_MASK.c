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
typedef  union i2c_smbus_data {int dummy; } i2c_smbus_data ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i2c_adapter {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_LOCK_SEGMENT ; 
 scalar_t__ FUNC0 (struct i2c_adapter*) ; 
 scalar_t__ FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ,unsigned short,char,int /*<<< orphan*/ ,int,union i2c_smbus_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 

s32 FUNC3(struct i2c_adapter *adapter, u16 addr,
		   unsigned short flags, char read_write,
		   u8 command, int protocol, union i2c_smbus_data *data)
{
	s32 res;

	res = FUNC0(adapter);
	if (res)
		return res;

	res = FUNC1(adapter, addr, flags, read_write,
			       command, protocol, data);
	FUNC2(adapter, I2C_LOCK_SEGMENT);

	return res;
}