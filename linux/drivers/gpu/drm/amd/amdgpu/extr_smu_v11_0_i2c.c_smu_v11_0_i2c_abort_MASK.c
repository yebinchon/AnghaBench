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
 int /*<<< orphan*/  ABORT ; 
 int /*<<< orphan*/  CKSVII2C_IC_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SMUIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCKSVII2C_IC_ENABLE ; 
 struct amdgpu_device* FUNC3 (struct i2c_adapter*) ; 

__attribute__((used)) static void FUNC4(struct i2c_adapter *control)
{
	struct amdgpu_device *adev = FUNC3(control);
	uint32_t reg = 0;

	/* Enable I2C engine; */
	reg = FUNC1(reg, CKSVII2C_IC_ENABLE, ENABLE, 1);
	FUNC2(SMUIO, 0, mmCKSVII2C_IC_ENABLE, reg);

	/* Abort previous transaction */
	reg = FUNC1(reg, CKSVII2C_IC_ENABLE, ABORT, 1);
	FUNC2(SMUIO, 0, mmCKSVII2C_IC_ENABLE, reg);

	FUNC0("I2C_Abort() Done.");
}