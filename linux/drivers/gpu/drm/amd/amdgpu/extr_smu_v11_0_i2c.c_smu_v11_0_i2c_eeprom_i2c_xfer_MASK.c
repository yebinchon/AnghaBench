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
typedef  int /*<<< orphan*/  uint8_t ;
struct i2c_msg {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; scalar_t__ addr; } ;
struct i2c_adapter {int dummy; } ;
struct amdgpu_ras_eeprom_control {int /*<<< orphan*/  bus_locked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EIO ; 
 int I2C_M_RD ; 
 int I2C_OK ; 
 int FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_adapter*) ; 
 struct amdgpu_ras_eeprom_control* FUNC5 (struct i2c_adapter*) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *i2c_adap,
			      struct i2c_msg *msgs, int num)
{
	int i, ret;
	struct amdgpu_ras_eeprom_control *control = FUNC5(i2c_adap);

	if (!control->bus_locked) {
		FUNC0("I2C bus unlocked, stopping transaction!");
		return -EIO;
	}

	FUNC4(i2c_adap);

	for (i = 0; i < num; i++) {
		if (msgs[i].flags & I2C_M_RD)
			ret = FUNC1(i2c_adap,
							(uint8_t)msgs[i].addr,
							msgs[i].buf, msgs[i].len);
		else
			ret = FUNC2(i2c_adap,
							 (uint8_t)msgs[i].addr,
							 msgs[i].buf, msgs[i].len);

		if (ret != I2C_OK) {
			num = -EIO;
			break;
		}
	}

	FUNC3(i2c_adap);
	return num;
}