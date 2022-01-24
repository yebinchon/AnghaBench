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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMUIO ; 
 int /*<<< orphan*/  mmCKSVII2C_IC_CLR_INTR ; 
 struct amdgpu_device* FUNC1 (struct i2c_adapter*) ; 

__attribute__((used)) static void FUNC2(struct i2c_adapter *control)
{
	struct amdgpu_device *adev = FUNC1(control);
	/* do */
	{
		FUNC0(SMUIO, 0, mmCKSVII2C_IC_CLR_INTR);

	} /* while (reg_CKSVII2C_ic_clr_intr == 0) */
}