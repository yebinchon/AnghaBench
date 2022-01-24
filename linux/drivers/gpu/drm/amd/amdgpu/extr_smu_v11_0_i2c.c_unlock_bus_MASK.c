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
struct i2c_adapter {int dummy; } ;
struct amdgpu_ras_eeprom_control {int bus_locked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*) ; 
 struct amdgpu_ras_eeprom_control* FUNC2 (struct i2c_adapter*) ; 

__attribute__((used)) static void FUNC3(struct i2c_adapter *i2c, unsigned int flags)
{
	struct amdgpu_ras_eeprom_control *control = FUNC2(i2c);

	if (!FUNC1(i2c)) {
		FUNC0("Failed to unlock the bus from SMU");
		return;
	}

	control->bus_locked = false;
}