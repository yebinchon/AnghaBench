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
typedef  int u32 ;
struct amdgpu_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SRBM_SOFT_RESET__SOFT_RESET_DC_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  mmSRBM_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(void *handle)
{
	u32 srbm_soft_reset = 0, tmp;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	if (FUNC2(adev))
		srbm_soft_reset |= SRBM_SOFT_RESET__SOFT_RESET_DC_MASK;

	if (srbm_soft_reset) {
		tmp = FUNC0(mmSRBM_SOFT_RESET);
		tmp |= srbm_soft_reset;
		FUNC3(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
		FUNC1(mmSRBM_SOFT_RESET, tmp);
		tmp = FUNC0(mmSRBM_SOFT_RESET);

		FUNC4(50);

		tmp &= ~srbm_soft_reset;
		FUNC1(mmSRBM_SOFT_RESET, tmp);
		tmp = FUNC0(mmSRBM_SOFT_RESET);

		/* Wait a little for things to settle down */
		FUNC4(50);
	}
	return 0;
}