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
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOFT_RESET_IH ; 
 int /*<<< orphan*/  SRBM_SOFT_RESET ; 
 int SRBM_STATUS__IH_BUSY_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  mmSRBM_SOFT_RESET ; 
 int /*<<< orphan*/  mmSRBM_STATUS ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(void *handle)
{
	u32 srbm_soft_reset = 0;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	u32 tmp = FUNC1(mmSRBM_STATUS);

	if (tmp & SRBM_STATUS__IH_BUSY_MASK)
		srbm_soft_reset = FUNC0(srbm_soft_reset, SRBM_SOFT_RESET,
						SOFT_RESET_IH, 1);

	if (srbm_soft_reset) {
		tmp = FUNC1(mmSRBM_SOFT_RESET);
		tmp |= srbm_soft_reset;
		FUNC3(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
		FUNC2(mmSRBM_SOFT_RESET, tmp);
		tmp = FUNC1(mmSRBM_SOFT_RESET);

		FUNC4(50);

		tmp &= ~srbm_soft_reset;
		FUNC2(mmSRBM_SOFT_RESET, tmp);
		tmp = FUNC1(mmSRBM_SOFT_RESET);

		/* Wait a little for things to settle down */
		FUNC4(50);
	}

	return 0;
}