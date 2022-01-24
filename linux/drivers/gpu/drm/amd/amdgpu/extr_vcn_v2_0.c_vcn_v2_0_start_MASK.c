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
typedef  int uint32_t ;
struct amdgpu_ring {int ring_size; int gpu_addr; int wptr; } ;
struct TYPE_6__ {TYPE_2__* inst; int /*<<< orphan*/  indirect_sram; } ;
struct TYPE_4__ {scalar_t__ dpm_enabled; } ;
struct amdgpu_device {int pg_flags; TYPE_3__ vcn; TYPE_1__ pm; } ;
struct TYPE_5__ {struct amdgpu_ring* ring_enc; struct amdgpu_ring ring_dec; } ;

/* Variables and functions */
 int AMD_PG_SUPPORT_VCN_DPG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  RB_BLKSZ ; 
 int /*<<< orphan*/  RB_BUFSZ ; 
 int /*<<< orphan*/  RB_NO_FETCH ; 
 int /*<<< orphan*/  RB_NO_UPDATE ; 
 int /*<<< orphan*/  RB_RPTR_WR_EN ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD ; 
 int UVD_LMI_CTRL2__STALL_ARB_UMC_MASK ; 
 int UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK ; 
 int UVD_LMI_CTRL__MASK_MC_URGENT_MASK ; 
 int UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK ; 
 int UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK ; 
 int UVD_MASTINT_EN__VCPU_EN_MASK ; 
 int UVD_MPC_CNTL__REPLACEMENT_MODE_MASK ; 
 int UVD_MPC_CNTL__REPLACEMENT_MODE__SHIFT ; 
 int UVD_MPC_SET_MUXA0__VARA_1__SHIFT ; 
 int UVD_MPC_SET_MUXA0__VARA_2__SHIFT ; 
 int UVD_MPC_SET_MUXA0__VARA_3__SHIFT ; 
 int UVD_MPC_SET_MUXA0__VARA_4__SHIFT ; 
 int UVD_MPC_SET_MUXB0__VARB_1__SHIFT ; 
 int UVD_MPC_SET_MUXB0__VARB_2__SHIFT ; 
 int UVD_MPC_SET_MUXB0__VARB_3__SHIFT ; 
 int UVD_MPC_SET_MUXB0__VARB_4__SHIFT ; 
 int UVD_MPC_SET_MUX__SET_0__SHIFT ; 
 int UVD_MPC_SET_MUX__SET_1__SHIFT ; 
 int UVD_MPC_SET_MUX__SET_2__SHIFT ; 
 int /*<<< orphan*/  UVD_RBC_RB_CNTL ; 
 int UVD_SOFT_RESET__LMI_SOFT_RESET_MASK ; 
 int UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK ; 
 int UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK ; 
 int UVD_STATUS__UVD_BUSY ; 
 int UVD_STATUS__VCPU_REPORT__SHIFT ; 
 int UVD_VCPU_CNTL__CLK_EN_MASK ; 
 int /*<<< orphan*/  VCN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int) ; 
 int FUNC7 (struct amdgpu_device*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  mmUVD_LMI_CTRL ; 
 int /*<<< orphan*/  mmUVD_LMI_CTRL2 ; 
 int /*<<< orphan*/  mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_RBC_RB_64BIT_BAR_LOW ; 
 int /*<<< orphan*/  mmUVD_LMI_RBC_RB_VMID ; 
 int /*<<< orphan*/  mmUVD_LMI_SWAP_CNTL ; 
 int /*<<< orphan*/  mmUVD_MASTINT_EN ; 
 int /*<<< orphan*/  mmUVD_MPC_CNTL ; 
 int /*<<< orphan*/  mmUVD_MPC_SET_MUX ; 
 int /*<<< orphan*/  mmUVD_MPC_SET_MUXA0 ; 
 int /*<<< orphan*/  mmUVD_MPC_SET_MUXB0 ; 
 int /*<<< orphan*/  mmUVD_RBC_RB_CNTL ; 
 int /*<<< orphan*/  mmUVD_RBC_RB_RPTR ; 
 int /*<<< orphan*/  mmUVD_RBC_RB_WPTR ; 
 int /*<<< orphan*/  mmUVD_RB_BASE_HI ; 
 int /*<<< orphan*/  mmUVD_RB_BASE_HI2 ; 
 int /*<<< orphan*/  mmUVD_RB_BASE_LO ; 
 int /*<<< orphan*/  mmUVD_RB_BASE_LO2 ; 
 int /*<<< orphan*/  mmUVD_RB_RPTR ; 
 int /*<<< orphan*/  mmUVD_RB_RPTR2 ; 
 int /*<<< orphan*/  mmUVD_RB_SIZE ; 
 int /*<<< orphan*/  mmUVD_RB_SIZE2 ; 
 int /*<<< orphan*/  mmUVD_RB_WPTR ; 
 int /*<<< orphan*/  mmUVD_RB_WPTR2 ; 
 int /*<<< orphan*/  mmUVD_SOFT_RESET ; 
 int /*<<< orphan*/  mmUVD_STATUS ; 
 int /*<<< orphan*/  mmUVD_VCPU_CNTL ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct amdgpu_device*) ; 
 int FUNC15 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring = &adev->vcn.inst->ring_dec;
	uint32_t rb_bufsz, tmp;
	uint32_t lmi_swap_cntl;
	int i, j, r;

	if (adev->pm.dpm_enabled)
		FUNC6(adev, true);

	if (adev->pg_flags & AMD_PG_SUPPORT_VCN_DPG) {
		r = FUNC15(adev, adev->vcn.indirect_sram);
		if (r)
			return r;
		goto jpeg;
	}

	FUNC13(adev);

	/* set uvd status busy */
	tmp = FUNC2(UVD, 0, mmUVD_STATUS) | UVD_STATUS__UVD_BUSY;
	FUNC5(UVD, 0, mmUVD_STATUS, tmp);

	/*SW clock gating */
	FUNC12(adev);

	/* enable VCPU clock */
	FUNC4(FUNC3(UVD, 0, mmUVD_VCPU_CNTL),
		UVD_VCPU_CNTL__CLK_EN_MASK, ~UVD_VCPU_CNTL__CLK_EN_MASK);

	/* disable master interrupt */
	FUNC4(FUNC3(UVD, 0, mmUVD_MASTINT_EN), 0,
		~UVD_MASTINT_EN__VCPU_EN_MASK);

	/* setup mmUVD_LMI_CTRL */
	tmp = FUNC2(UVD, 0, mmUVD_LMI_CTRL);
	FUNC5(UVD, 0, mmUVD_LMI_CTRL, tmp |
		UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK	|
		UVD_LMI_CTRL__MASK_MC_URGENT_MASK |
		UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK |
		UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK);

	/* setup mmUVD_MPC_CNTL */
	tmp = FUNC2(UVD, 0, mmUVD_MPC_CNTL);
	tmp &= ~UVD_MPC_CNTL__REPLACEMENT_MODE_MASK;
	tmp |= 0x2 << UVD_MPC_CNTL__REPLACEMENT_MODE__SHIFT;
	FUNC5(VCN, 0, mmUVD_MPC_CNTL, tmp);

	/* setup UVD_MPC_SET_MUXA0 */
	FUNC5(UVD, 0, mmUVD_MPC_SET_MUXA0,
		((0x1 << UVD_MPC_SET_MUXA0__VARA_1__SHIFT) |
		(0x2 << UVD_MPC_SET_MUXA0__VARA_2__SHIFT) |
		(0x3 << UVD_MPC_SET_MUXA0__VARA_3__SHIFT) |
		(0x4 << UVD_MPC_SET_MUXA0__VARA_4__SHIFT)));

	/* setup UVD_MPC_SET_MUXB0 */
	FUNC5(UVD, 0, mmUVD_MPC_SET_MUXB0,
		((0x1 << UVD_MPC_SET_MUXB0__VARB_1__SHIFT) |
		(0x2 << UVD_MPC_SET_MUXB0__VARB_2__SHIFT) |
		(0x3 << UVD_MPC_SET_MUXB0__VARB_3__SHIFT) |
		(0x4 << UVD_MPC_SET_MUXB0__VARB_4__SHIFT)));

	/* setup mmUVD_MPC_SET_MUX */
	FUNC5(UVD, 0, mmUVD_MPC_SET_MUX,
		((0x0 << UVD_MPC_SET_MUX__SET_0__SHIFT) |
		(0x1 << UVD_MPC_SET_MUX__SET_1__SHIFT) |
		(0x2 << UVD_MPC_SET_MUX__SET_2__SHIFT)));

	FUNC14(adev);

	/* release VCPU reset to boot */
	FUNC4(FUNC3(UVD, 0, mmUVD_SOFT_RESET), 0,
		~UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK);

	/* enable LMI MC and UMC channels */
	FUNC4(FUNC3(UVD, 0, mmUVD_LMI_CTRL2), 0,
		~UVD_LMI_CTRL2__STALL_ARB_UMC_MASK);

	tmp = FUNC2(VCN, 0, mmUVD_SOFT_RESET);
	tmp &= ~UVD_SOFT_RESET__LMI_SOFT_RESET_MASK;
	tmp &= ~UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK;
	FUNC5(VCN, 0, mmUVD_SOFT_RESET, tmp);

	/* disable byte swapping */
	lmi_swap_cntl = 0;
#ifdef __BIG_ENDIAN
	/* swap (8 in 32) RB and IB */
	lmi_swap_cntl = 0xa;
#endif
	FUNC5(UVD, 0, mmUVD_LMI_SWAP_CNTL, lmi_swap_cntl);

	for (i = 0; i < 10; ++i) {
		uint32_t status;

		for (j = 0; j < 100; ++j) {
			status = FUNC2(UVD, 0, mmUVD_STATUS);
			if (status & 2)
				break;
			FUNC9(10);
		}
		r = 0;
		if (status & 2)
			break;

		FUNC0("VCN decode not responding, trying to reset the VCPU!!!\n");
		FUNC4(FUNC3(UVD, 0, mmUVD_SOFT_RESET),
			UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK,
			~UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK);
		FUNC9(10);
		FUNC4(FUNC3(UVD, 0, mmUVD_SOFT_RESET), 0,
			~UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK);
		FUNC9(10);
		r = -1;
	}

	if (r) {
		FUNC0("VCN decode not responding, giving up!!!\n");
		return r;
	}

	/* enable master interrupt */
	FUNC4(FUNC3(UVD, 0, mmUVD_MASTINT_EN),
		UVD_MASTINT_EN__VCPU_EN_MASK,
		~UVD_MASTINT_EN__VCPU_EN_MASK);

	/* clear the busy bit of VCN_STATUS */
	FUNC4(FUNC3(UVD, 0, mmUVD_STATUS), 0,
		~(2 << UVD_STATUS__VCPU_REPORT__SHIFT));

	FUNC5(UVD, 0, mmUVD_LMI_RBC_RB_VMID, 0);

	/* force RBC into idle state */
	rb_bufsz = FUNC10(ring->ring_size);
	tmp = FUNC1(0, UVD_RBC_RB_CNTL, RB_BUFSZ, rb_bufsz);
	tmp = FUNC1(tmp, UVD_RBC_RB_CNTL, RB_BLKSZ, 1);
	tmp = FUNC1(tmp, UVD_RBC_RB_CNTL, RB_NO_FETCH, 1);
	tmp = FUNC1(tmp, UVD_RBC_RB_CNTL, RB_NO_UPDATE, 1);
	tmp = FUNC1(tmp, UVD_RBC_RB_CNTL, RB_RPTR_WR_EN, 1);
	FUNC5(UVD, 0, mmUVD_RBC_RB_CNTL, tmp);

	/* programm the RB_BASE for ring buffer */
	FUNC5(UVD, 0, mmUVD_LMI_RBC_RB_64BIT_BAR_LOW,
		FUNC8(ring->gpu_addr));
	FUNC5(UVD, 0, mmUVD_LMI_RBC_RB_64BIT_BAR_HIGH,
		FUNC11(ring->gpu_addr));

	/* Initialize the ring buffer's read and write pointers */
	FUNC5(UVD, 0, mmUVD_RBC_RB_RPTR, 0);

	ring->wptr = FUNC2(UVD, 0, mmUVD_RBC_RB_RPTR);
	FUNC5(UVD, 0, mmUVD_RBC_RB_WPTR,
			FUNC8(ring->wptr));

	ring = &adev->vcn.inst->ring_enc[0];
	FUNC5(UVD, 0, mmUVD_RB_RPTR, FUNC8(ring->wptr));
	FUNC5(UVD, 0, mmUVD_RB_WPTR, FUNC8(ring->wptr));
	FUNC5(UVD, 0, mmUVD_RB_BASE_LO, ring->gpu_addr);
	FUNC5(UVD, 0, mmUVD_RB_BASE_HI, FUNC11(ring->gpu_addr));
	FUNC5(UVD, 0, mmUVD_RB_SIZE, ring->ring_size / 4);

	ring = &adev->vcn.inst->ring_enc[1];
	FUNC5(UVD, 0, mmUVD_RB_RPTR2, FUNC8(ring->wptr));
	FUNC5(UVD, 0, mmUVD_RB_WPTR2, FUNC8(ring->wptr));
	FUNC5(UVD, 0, mmUVD_RB_BASE_LO2, ring->gpu_addr);
	FUNC5(UVD, 0, mmUVD_RB_BASE_HI2, FUNC11(ring->gpu_addr));
	FUNC5(UVD, 0, mmUVD_RB_SIZE2, ring->ring_size / 4);

jpeg:
	r = FUNC7(adev);

	return r;
}