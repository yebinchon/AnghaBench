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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMUIO ; 
 int /*<<< orphan*/  SMUIO_PWRMGT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_clk_gate_en ; 
 int /*<<< orphan*/  mmSMUIO_PWRMGT ; 
 struct amdgpu_device* FUNC3 (struct i2c_adapter*) ; 

__attribute__((used)) static void FUNC4(struct i2c_adapter *control, bool en)
{
	struct amdgpu_device *adev = FUNC3(control);
	uint32_t reg = FUNC1(SMUIO, 0, mmSMUIO_PWRMGT);

	reg = FUNC0(reg, SMUIO_PWRMGT, i2c_clk_gate_en, en ? 1 : 0);
	FUNC2(SMUIO, 0, mmSMUIO_PWRMGT, reg);
}