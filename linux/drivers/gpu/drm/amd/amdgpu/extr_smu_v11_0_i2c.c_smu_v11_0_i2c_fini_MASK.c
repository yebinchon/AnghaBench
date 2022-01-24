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
typedef  int /*<<< orphan*/  uint32_t ;
struct i2c_adapter {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CKSVII2C_IC_ENABLE ; 
 int /*<<< orphan*/  CKSVII2C_IC_ENABLE_STATUS ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  IC_EN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMUIO ; 
 int /*<<< orphan*/  mmCKSVII2C_IC_ENABLE ; 
 int /*<<< orphan*/  mmCKSVII2C_IC_ENABLE_STATUS ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*,int) ; 
 struct amdgpu_device* FUNC4 (struct i2c_adapter*) ; 

__attribute__((used)) static void FUNC5(struct i2c_adapter *control)
{
	struct amdgpu_device *adev = FUNC4(control);
	uint32_t reg_ic_enable_status, reg_ic_enable;

	FUNC3(control, false);

	/* Double check if disabled, else force abort */
	reg_ic_enable_status = FUNC1(SMUIO, 0, mmCKSVII2C_IC_ENABLE_STATUS);
	reg_ic_enable = FUNC1(SMUIO, 0, mmCKSVII2C_IC_ENABLE);

	if ((FUNC0(reg_ic_enable, CKSVII2C_IC_ENABLE, ENABLE) == 0) &&
	    (FUNC0(reg_ic_enable_status,
			   CKSVII2C_IC_ENABLE_STATUS, IC_EN) == 1)) {
		/*
		 * Nobody is using I2C engine, but engine remains active because
		 * someone missed to send STOP
		 */
		FUNC2(control);
	}

	/* Restore clock gating */

	/*
	 * TODO Reenabling clock gating seems to break subsequent SMU operation
	 *      on the I2C bus. My guess is that SMU doesn't disable clock gating like
	 *      we do here before working with the bus. So for now just don't restore
	 *      it but later work with SMU to see if they have this issue and can
	 *      update their code appropriately
	 */
	/* smu_v11_0_i2c_set_clock_gating(control, true); */

}