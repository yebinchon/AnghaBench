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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct amdgpu_ring {int ring_size; int wptr; int rptr_offs; int gpu_addr; } ;
struct TYPE_4__ {struct amdgpu_ring* compute_ring; } ;
struct TYPE_3__ {scalar_t__ gpu_addr; } ;
struct amdgpu_device {TYPE_2__ gfx; TYPE_1__ wb; } ;

/* Variables and functions */
 int AMDGPU_GPU_PAGE_SIZE ; 
 int BUF_SWAP_32BIT ; 
 int CP_RB1_CNTL__RB_RPTR_WR_ENA_MASK ; 
 int CP_RB2_CNTL__RB_RPTR_WR_ENA_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct amdgpu_ring*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  mmCP_RB1_BASE ; 
 int /*<<< orphan*/  mmCP_RB1_CNTL ; 
 int /*<<< orphan*/  mmCP_RB1_RPTR_ADDR ; 
 int /*<<< orphan*/  mmCP_RB1_RPTR_ADDR_HI ; 
 int /*<<< orphan*/  mmCP_RB1_WPTR ; 
 int /*<<< orphan*/  mmCP_RB2_BASE ; 
 int /*<<< orphan*/  mmCP_RB2_CNTL ; 
 int /*<<< orphan*/  mmCP_RB2_RPTR_ADDR ; 
 int /*<<< orphan*/  mmCP_RB2_RPTR_ADDR_HI ; 
 int /*<<< orphan*/  mmCP_RB2_WPTR ; 
 int FUNC4 (int) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring;
	u32 tmp;
	u32 rb_bufsz;
	int i, r;
	u64 rptr_addr;

	/* ring1  - compute only */
	/* Set ring buffer size */

	ring = &adev->gfx.compute_ring[0];
	rb_bufsz = FUNC4(ring->ring_size / 8);
	tmp = (FUNC4(AMDGPU_GPU_PAGE_SIZE/8) << 8) | rb_bufsz;
#ifdef __BIG_ENDIAN
	tmp |= BUF_SWAP_32BIT;
#endif
	FUNC0(mmCP_RB1_CNTL, tmp);

	FUNC0(mmCP_RB1_CNTL, tmp | CP_RB1_CNTL__RB_RPTR_WR_ENA_MASK);
	ring->wptr = 0;
	FUNC0(mmCP_RB1_WPTR, ring->wptr);

	rptr_addr = adev->wb.gpu_addr + (ring->rptr_offs * 4);
	FUNC0(mmCP_RB1_RPTR_ADDR, FUNC2(rptr_addr));
	FUNC0(mmCP_RB1_RPTR_ADDR_HI, FUNC5(rptr_addr) & 0xFF);

	FUNC3(1);
	FUNC0(mmCP_RB1_CNTL, tmp);
	FUNC0(mmCP_RB1_BASE, ring->gpu_addr >> 8);

	ring = &adev->gfx.compute_ring[1];
	rb_bufsz = FUNC4(ring->ring_size / 8);
	tmp = (FUNC4(AMDGPU_GPU_PAGE_SIZE/8) << 8) | rb_bufsz;
#ifdef __BIG_ENDIAN
	tmp |= BUF_SWAP_32BIT;
#endif
	FUNC0(mmCP_RB2_CNTL, tmp);

	FUNC0(mmCP_RB2_CNTL, tmp | CP_RB2_CNTL__RB_RPTR_WR_ENA_MASK);
	ring->wptr = 0;
	FUNC0(mmCP_RB2_WPTR, ring->wptr);
	rptr_addr = adev->wb.gpu_addr + (ring->rptr_offs * 4);
	FUNC0(mmCP_RB2_RPTR_ADDR, FUNC2(rptr_addr));
	FUNC0(mmCP_RB2_RPTR_ADDR_HI, FUNC5(rptr_addr) & 0xFF);

	FUNC3(1);
	FUNC0(mmCP_RB2_CNTL, tmp);
	FUNC0(mmCP_RB2_BASE, ring->gpu_addr >> 8);


	for (i = 0; i < 2; i++) {
		r = FUNC1(&adev->gfx.compute_ring[i]);
		if (r)
			return r;
	}

	return 0;
}