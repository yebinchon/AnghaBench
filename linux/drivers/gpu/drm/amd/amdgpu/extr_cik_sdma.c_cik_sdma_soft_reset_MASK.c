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
 int FUNC0 (scalar_t__) ; 
 int SDMA0_F32_CNTL__HALT_MASK ; 
 scalar_t__ SDMA0_REGISTER_OFFSET ; 
 scalar_t__ SDMA1_REGISTER_OFFSET ; 
 int SRBM_SOFT_RESET__SOFT_RESET_SDMA1_MASK ; 
 int SRBM_SOFT_RESET__SOFT_RESET_SDMA_MASK ; 
 int SRBM_STATUS2__SDMA1_BUSY_MASK ; 
 int SRBM_STATUS2__SDMA_BUSY_MASK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ mmSDMA0_F32_CNTL ; 
 scalar_t__ mmSRBM_SOFT_RESET ; 
 scalar_t__ mmSRBM_STATUS2 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(void *handle)
{
	u32 srbm_soft_reset = 0;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	u32 tmp = FUNC0(mmSRBM_STATUS2);

	if (tmp & SRBM_STATUS2__SDMA_BUSY_MASK) {
		/* sdma0 */
		tmp = FUNC0(mmSDMA0_F32_CNTL + SDMA0_REGISTER_OFFSET);
		tmp |= SDMA0_F32_CNTL__HALT_MASK;
		FUNC1(mmSDMA0_F32_CNTL + SDMA0_REGISTER_OFFSET, tmp);
		srbm_soft_reset |= SRBM_SOFT_RESET__SOFT_RESET_SDMA_MASK;
	}
	if (tmp & SRBM_STATUS2__SDMA1_BUSY_MASK) {
		/* sdma1 */
		tmp = FUNC0(mmSDMA0_F32_CNTL + SDMA1_REGISTER_OFFSET);
		tmp |= SDMA0_F32_CNTL__HALT_MASK;
		FUNC1(mmSDMA0_F32_CNTL + SDMA1_REGISTER_OFFSET, tmp);
		srbm_soft_reset |= SRBM_SOFT_RESET__SOFT_RESET_SDMA1_MASK;
	}

	if (srbm_soft_reset) {
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