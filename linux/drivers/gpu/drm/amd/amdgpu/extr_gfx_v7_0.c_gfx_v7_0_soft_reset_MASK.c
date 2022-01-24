#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {TYPE_2__ rlc; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; TYPE_3__ gfx; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* stop ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 int CP_MEC_CNTL__MEC_ME1_HALT_MASK ; 
 int CP_MEC_CNTL__MEC_ME2_HALT_MASK ; 
 int CP_ME_CNTL__CE_HALT_MASK ; 
 int CP_ME_CNTL__ME_HALT_MASK ; 
 int CP_ME_CNTL__PFP_HALT_MASK ; 
 int GRBM_SOFT_RESET__SOFT_RESET_CP_MASK ; 
 int GRBM_SOFT_RESET__SOFT_RESET_GFX_MASK ; 
 int GRBM_SOFT_RESET__SOFT_RESET_RLC_MASK ; 
 int GRBM_STATUS2__RLC_BUSY_MASK ; 
 int GRBM_STATUS__BCI_BUSY_MASK ; 
 int GRBM_STATUS__CB_BUSY_MASK ; 
 int GRBM_STATUS__CP_BUSY_MASK ; 
 int GRBM_STATUS__CP_COHERENCY_BUSY_MASK ; 
 int GRBM_STATUS__DB_BUSY_MASK ; 
 int GRBM_STATUS__GDS_BUSY_MASK ; 
 int GRBM_STATUS__IA_BUSY_MASK ; 
 int GRBM_STATUS__IA_BUSY_NO_DMA_MASK ; 
 int GRBM_STATUS__PA_BUSY_MASK ; 
 int GRBM_STATUS__SC_BUSY_MASK ; 
 int GRBM_STATUS__SPI_BUSY_MASK ; 
 int GRBM_STATUS__SX_BUSY_MASK ; 
 int GRBM_STATUS__TA_BUSY_MASK ; 
 int GRBM_STATUS__VGT_BUSY_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SRBM_SOFT_RESET__SOFT_RESET_GRBM_MASK ; 
 int SRBM_STATUS__GRBM_RQ_PENDING_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  mmCP_MEC_CNTL ; 
 int /*<<< orphan*/  mmCP_ME_CNTL ; 
 int /*<<< orphan*/  mmGRBM_SOFT_RESET ; 
 int /*<<< orphan*/  mmGRBM_STATUS ; 
 int /*<<< orphan*/  mmGRBM_STATUS2 ; 
 int /*<<< orphan*/  mmSRBM_SOFT_RESET ; 
 int /*<<< orphan*/  mmSRBM_STATUS ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(void *handle)
{
	u32 grbm_soft_reset = 0, srbm_soft_reset = 0;
	u32 tmp;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	/* GRBM_STATUS */
	tmp = FUNC0(mmGRBM_STATUS);
	if (tmp & (GRBM_STATUS__PA_BUSY_MASK | GRBM_STATUS__SC_BUSY_MASK |
		   GRBM_STATUS__BCI_BUSY_MASK | GRBM_STATUS__SX_BUSY_MASK |
		   GRBM_STATUS__TA_BUSY_MASK | GRBM_STATUS__VGT_BUSY_MASK |
		   GRBM_STATUS__DB_BUSY_MASK | GRBM_STATUS__CB_BUSY_MASK |
		   GRBM_STATUS__GDS_BUSY_MASK | GRBM_STATUS__SPI_BUSY_MASK |
		   GRBM_STATUS__IA_BUSY_MASK | GRBM_STATUS__IA_BUSY_NO_DMA_MASK))
		grbm_soft_reset |= GRBM_SOFT_RESET__SOFT_RESET_CP_MASK |
			GRBM_SOFT_RESET__SOFT_RESET_GFX_MASK;

	if (tmp & (GRBM_STATUS__CP_BUSY_MASK | GRBM_STATUS__CP_COHERENCY_BUSY_MASK)) {
		grbm_soft_reset |= GRBM_SOFT_RESET__SOFT_RESET_CP_MASK;
		srbm_soft_reset |= SRBM_SOFT_RESET__SOFT_RESET_GRBM_MASK;
	}

	/* GRBM_STATUS2 */
	tmp = FUNC0(mmGRBM_STATUS2);
	if (tmp & GRBM_STATUS2__RLC_BUSY_MASK)
		grbm_soft_reset |= GRBM_SOFT_RESET__SOFT_RESET_RLC_MASK;

	/* SRBM_STATUS */
	tmp = FUNC0(mmSRBM_STATUS);
	if (tmp & SRBM_STATUS__GRBM_RQ_PENDING_MASK)
		srbm_soft_reset |= SRBM_SOFT_RESET__SOFT_RESET_GRBM_MASK;

	if (grbm_soft_reset || srbm_soft_reset) {
		/* disable CG/PG */
		FUNC3(adev);
		FUNC4(adev, false);

		/* stop the rlc */
		adev->gfx.rlc.funcs->stop(adev);

		/* Disable GFX parsing/prefetching */
		FUNC1(mmCP_ME_CNTL, CP_ME_CNTL__ME_HALT_MASK | CP_ME_CNTL__PFP_HALT_MASK | CP_ME_CNTL__CE_HALT_MASK);

		/* Disable MEC parsing/prefetching */
		FUNC1(mmCP_MEC_CNTL, CP_MEC_CNTL__MEC_ME1_HALT_MASK | CP_MEC_CNTL__MEC_ME2_HALT_MASK);

		if (grbm_soft_reset) {
			tmp = FUNC0(mmGRBM_SOFT_RESET);
			tmp |= grbm_soft_reset;
			FUNC2(adev->dev, "GRBM_SOFT_RESET=0x%08X\n", tmp);
			FUNC1(mmGRBM_SOFT_RESET, tmp);
			tmp = FUNC0(mmGRBM_SOFT_RESET);

			FUNC6(50);

			tmp &= ~grbm_soft_reset;
			FUNC1(mmGRBM_SOFT_RESET, tmp);
			tmp = FUNC0(mmGRBM_SOFT_RESET);
		}

		if (srbm_soft_reset) {
			tmp = FUNC0(mmSRBM_SOFT_RESET);
			tmp |= srbm_soft_reset;
			FUNC2(adev->dev, "SRBM_SOFT_RESET=0x%08X\n", tmp);
			FUNC1(mmSRBM_SOFT_RESET, tmp);
			tmp = FUNC0(mmSRBM_SOFT_RESET);

			FUNC6(50);

			tmp &= ~srbm_soft_reset;
			FUNC1(mmSRBM_SOFT_RESET, tmp);
			tmp = FUNC0(mmSRBM_SOFT_RESET);
		}
		/* Wait a little for things to settle down */
		FUNC6(50);
	}
	return 0;
}