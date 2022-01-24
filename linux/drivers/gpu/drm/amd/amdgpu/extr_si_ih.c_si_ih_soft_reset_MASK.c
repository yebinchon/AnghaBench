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
 int /*<<< orphan*/  SRBM_SOFT_RESET ; 
 int SRBM_SOFT_RESET__SOFT_RESET_IH_MASK ; 
 int /*<<< orphan*/  SRBM_STATUS ; 
 int SRBM_STATUS__IH_BUSY_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	u32 srbm_soft_reset = 0;
	u32 tmp = FUNC0(SRBM_STATUS);

	if (tmp & SRBM_STATUS__IH_BUSY_MASK)
		srbm_soft_reset |= SRBM_SOFT_RESET__SOFT_RESET_IH_MASK;

	if (srbm_soft_reset) {
		tmp = FUNC0(SRBM_SOFT_RESET);
		tmp |= srbm_soft_reset;
		FUNC2(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
		FUNC1(SRBM_SOFT_RESET, tmp);
		tmp = FUNC0(SRBM_SOFT_RESET);

		FUNC3(50);

		tmp &= ~srbm_soft_reset;
		FUNC1(SRBM_SOFT_RESET, tmp);
		tmp = FUNC0(SRBM_SOFT_RESET);

		FUNC3(50);
	}

	return 0;
}