#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; TYPE_2__ uvd; } ;
struct TYPE_3__ {scalar_t__ srbm_soft_reset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  mmSRBM_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	u32 srbm_soft_reset;

	if (!adev->uvd.inst->srbm_soft_reset)
		return 0;
	srbm_soft_reset = adev->uvd.inst->srbm_soft_reset;

	if (srbm_soft_reset) {
		u32 tmp;

		tmp = FUNC0(mmSRBM_SOFT_RESET);
		tmp |= srbm_soft_reset;
		FUNC2(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
		FUNC1(mmSRBM_SOFT_RESET, tmp);
		tmp = FUNC0(mmSRBM_SOFT_RESET);

		FUNC3(50);

		tmp &= ~srbm_soft_reset;
		FUNC1(mmSRBM_SOFT_RESET, tmp);
		tmp = FUNC0(mmSRBM_SOFT_RESET);

		/* Wait a little for things to settle down */
		FUNC3(50);
	}

	return 0;
}