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
typedef  int uint32_t ;
typedef  int u32 ;
struct radeon_ring {int gpu_addr; int wptr; int /*<<< orphan*/  ring_size; } ;
struct radeon_device {struct radeon_ring* ring; } ;

/* Variables and functions */
 int CSM_SOFT_RESET ; 
 int CXW_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int LBSI_SOFT_RESET ; 
 int LMI_SOFT_RESET ; 
 int LMI_UMC_SOFT_RESET ; 
 size_t R600_RING_TYPE_UVD_INDEX ; 
 int RBC_SOFT_RESET ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int SOFT_RESET_UVD ; 
 int /*<<< orphan*/  SRBM_SOFT_RESET ; 
 int TAP_SOFT_RESET ; 
 int /*<<< orphan*/  UVD_CGC_GATE ; 
 int /*<<< orphan*/  UVD_LMI_CTRL ; 
 int /*<<< orphan*/  UVD_LMI_CTRL2 ; 
 int /*<<< orphan*/  UVD_LMI_EXT40_ADDR ; 
 int /*<<< orphan*/  UVD_LMI_SWAP_CNTL ; 
 int /*<<< orphan*/  UVD_MASTINT_EN ; 
 int /*<<< orphan*/  UVD_MPC_SET_ALU ; 
 int /*<<< orphan*/  UVD_MPC_SET_MUX ; 
 int /*<<< orphan*/  UVD_MPC_SET_MUXA0 ; 
 int /*<<< orphan*/  UVD_MPC_SET_MUXA1 ; 
 int /*<<< orphan*/  UVD_MPC_SET_MUXB0 ; 
 int /*<<< orphan*/  UVD_MPC_SET_MUXB1 ; 
 int /*<<< orphan*/  UVD_MP_SWAP_CNTL ; 
 int /*<<< orphan*/  UVD_RBC_RB_BASE ; 
 int /*<<< orphan*/  UVD_RBC_RB_CNTL ; 
 int /*<<< orphan*/  UVD_RBC_RB_RPTR ; 
 int /*<<< orphan*/  UVD_RBC_RB_WPTR ; 
 int /*<<< orphan*/  UVD_RBC_RB_WPTR_CNTL ; 
 int /*<<< orphan*/  UVD_RB_ARB_CTRL ; 
 int /*<<< orphan*/  UVD_SOFT_RESET ; 
 int /*<<< orphan*/  UVD_STATUS ; 
 int /*<<< orphan*/  UVD_VCPU_CNTL ; 
 int VCPU_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 

int FUNC7(struct radeon_device *rdev)
{
	struct radeon_ring *ring = &rdev->ring[R600_RING_TYPE_UVD_INDEX];
	uint32_t rb_bufsz;
	int i, j, r;

	/* disable byte swapping */
	u32 lmi_swap_cntl = 0;
	u32 mp_swap_cntl = 0;

	/* disable clock gating */
	FUNC2(UVD_CGC_GATE, 0);

	/* disable interupt */
	FUNC3(UVD_MASTINT_EN, 0, ~(1 << 1));

	/* Stall UMC and register bus before resetting VCPU */
	FUNC3(UVD_LMI_CTRL2, 1 << 8, ~(1 << 8));
	FUNC3(UVD_RB_ARB_CTRL, 1 << 3, ~(1 << 3));
	FUNC4(1);

	/* put LMI, VCPU, RBC etc... into reset */
	FUNC2(UVD_SOFT_RESET, LMI_SOFT_RESET | VCPU_SOFT_RESET |
	       LBSI_SOFT_RESET | RBC_SOFT_RESET | CSM_SOFT_RESET |
	       CXW_SOFT_RESET | TAP_SOFT_RESET | LMI_UMC_SOFT_RESET);
	FUNC4(5);

	/* take UVD block out of reset */
	FUNC3(SRBM_SOFT_RESET, 0, ~SOFT_RESET_UVD);
	FUNC4(5);

	/* initialize UVD memory controller */
	FUNC2(UVD_LMI_CTRL, 0x40 | (1 << 8) | (1 << 13) |
			     (1 << 21) | (1 << 9) | (1 << 20));

#ifdef __BIG_ENDIAN
	/* swap (8 in 32) RB and IB */
	lmi_swap_cntl = 0xa;
	mp_swap_cntl = 0;
#endif
	FUNC2(UVD_LMI_SWAP_CNTL, lmi_swap_cntl);
	FUNC2(UVD_MP_SWAP_CNTL, mp_swap_cntl);

	FUNC2(UVD_MPC_SET_MUXA0, 0x40c2040);
	FUNC2(UVD_MPC_SET_MUXA1, 0x0);
	FUNC2(UVD_MPC_SET_MUXB0, 0x40c2040);
	FUNC2(UVD_MPC_SET_MUXB1, 0x0);
	FUNC2(UVD_MPC_SET_ALU, 0);
	FUNC2(UVD_MPC_SET_MUX, 0x88);

	/* take all subblocks out of reset, except VCPU */
	FUNC2(UVD_SOFT_RESET, VCPU_SOFT_RESET);
	FUNC4(5);

	/* enable VCPU clock */
	FUNC2(UVD_VCPU_CNTL,  1 << 9);

	/* enable UMC */
	FUNC3(UVD_LMI_CTRL2, 0, ~(1 << 8));

	FUNC3(UVD_RB_ARB_CTRL, 0, ~(1 << 3));

	/* boot up the VCPU */
	FUNC2(UVD_SOFT_RESET, 0);
	FUNC4(10);

	for (i = 0; i < 10; ++i) {
		uint32_t status;
		for (j = 0; j < 100; ++j) {
			status = FUNC1(UVD_STATUS);
			if (status & 2)
				break;
			FUNC4(10);
		}
		r = 0;
		if (status & 2)
			break;

		FUNC0("UVD not responding, trying to reset the VCPU!!!\n");
		FUNC3(UVD_SOFT_RESET, VCPU_SOFT_RESET, ~VCPU_SOFT_RESET);
		FUNC4(10);
		FUNC3(UVD_SOFT_RESET, 0, ~VCPU_SOFT_RESET);
		FUNC4(10);
		r = -1;
	}

	if (r) {
		FUNC0("UVD not responding, giving up!!!\n");
		return r;
	}

	/* enable interupt */
	FUNC3(UVD_MASTINT_EN, 3<<1, ~(3 << 1));

	/* force RBC into idle state */
	FUNC2(UVD_RBC_RB_CNTL, 0x11010101);

	/* Set the write pointer delay */
	FUNC2(UVD_RBC_RB_WPTR_CNTL, 0);

	/* programm the 4GB memory segment for rptr and ring buffer */
	FUNC2(UVD_LMI_EXT40_ADDR, FUNC6(ring->gpu_addr) |
				   (0x7 << 16) | (0x1 << 31));

	/* Initialize the ring buffer's read and write pointers */
	FUNC2(UVD_RBC_RB_RPTR, 0x0);

	ring->wptr = FUNC1(UVD_RBC_RB_RPTR);
	FUNC2(UVD_RBC_RB_WPTR, ring->wptr);

	/* set the ring address */
	FUNC2(UVD_RBC_RB_BASE, ring->gpu_addr);

	/* Set ring buffer size */
	rb_bufsz = FUNC5(ring->ring_size);
	rb_bufsz = (0x1 << 8) | rb_bufsz;
	FUNC3(UVD_RBC_RB_CNTL, rb_bufsz, ~0x11f1f);

	return 0;
}