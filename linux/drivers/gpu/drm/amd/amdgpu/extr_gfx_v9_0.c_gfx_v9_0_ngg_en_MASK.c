#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct amdgpu_ring {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int gds_reserve_size; int gds_reserve_addr; TYPE_1__* buf; } ;
struct TYPE_8__ {TYPE_3__ ngg; struct amdgpu_ring* gfx_ring; } ;
struct TYPE_6__ {scalar_t__ gds_size; } ;
struct amdgpu_device {TYPE_4__ gfx; TYPE_2__ gds; } ;
struct TYPE_5__ {int size; int /*<<< orphan*/  gpu_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASE ; 
 int /*<<< orphan*/  BASE_HI ; 
 int /*<<< orphan*/  CNTL_SB_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  INDEX_BUF_SIZE ; 
 size_t NGG_CNTL ; 
 size_t NGG_PARAM ; 
 size_t NGG_POS ; 
 size_t NGG_PRIM ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_DMA_DATA ; 
 int PACKET3_DMA_DATA_CMD_RAW_WAIT ; 
 int PACKET3_DMA_DATA_CP_SYNC ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  PARAM_BUF_SIZE ; 
 int /*<<< orphan*/  POS_BUF_SIZE ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WD_BUF_RESOURCE_1 ; 
 int /*<<< orphan*/  WD_BUF_RESOURCE_2 ; 
 int /*<<< orphan*/  WD_CNTL_SB_BUF_BASE ; 
 int /*<<< orphan*/  WD_CNTL_SB_BUF_BASE_HI ; 
 int /*<<< orphan*/  WD_INDEX_BUF_BASE ; 
 int /*<<< orphan*/  WD_INDEX_BUF_BASE_HI ; 
 int /*<<< orphan*/  WD_POS_BUF_BASE ; 
 int /*<<< orphan*/  WD_POS_BUF_BASE_HI ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  amdgpu_ngg ; 
 int FUNC7 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_ring*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmGDS_VMID0_SIZE ; 
 int /*<<< orphan*/  mmWD_BUF_RESOURCE_1 ; 
 int /*<<< orphan*/  mmWD_BUF_RESOURCE_2 ; 
 int /*<<< orphan*/  mmWD_CNTL_SB_BUF_BASE ; 
 int /*<<< orphan*/  mmWD_CNTL_SB_BUF_BASE_HI ; 
 int /*<<< orphan*/  mmWD_INDEX_BUF_BASE ; 
 int /*<<< orphan*/  mmWD_INDEX_BUF_BASE_HI ; 
 int /*<<< orphan*/  mmWD_POS_BUF_BASE ; 
 int /*<<< orphan*/  mmWD_POS_BUF_BASE_HI ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring = &adev->gfx.gfx_ring[0];
	int r;
	u32 data, base;

	if (!amdgpu_ngg)
		return 0;

	/* Program buffer size */
	data = FUNC4(0, WD_BUF_RESOURCE_1, INDEX_BUF_SIZE,
			     adev->gfx.ngg.buf[NGG_PRIM].size >> 8);
	data = FUNC4(data, WD_BUF_RESOURCE_1, POS_BUF_SIZE,
			     adev->gfx.ngg.buf[NGG_POS].size >> 8);
	FUNC6(GC, 0, mmWD_BUF_RESOURCE_1, data);

	data = FUNC4(0, WD_BUF_RESOURCE_2, CNTL_SB_BUF_SIZE,
			     adev->gfx.ngg.buf[NGG_CNTL].size >> 8);
	data = FUNC4(data, WD_BUF_RESOURCE_2, PARAM_BUF_SIZE,
			     adev->gfx.ngg.buf[NGG_PARAM].size >> 10);
	FUNC6(GC, 0, mmWD_BUF_RESOURCE_2, data);

	/* Program buffer base address */
	base = FUNC11(adev->gfx.ngg.buf[NGG_PRIM].gpu_addr);
	data = FUNC4(0, WD_INDEX_BUF_BASE, BASE, base);
	FUNC6(GC, 0, mmWD_INDEX_BUF_BASE, data);

	base = FUNC12(adev->gfx.ngg.buf[NGG_PRIM].gpu_addr);
	data = FUNC4(0, WD_INDEX_BUF_BASE_HI, BASE_HI, base);
	FUNC6(GC, 0, mmWD_INDEX_BUF_BASE_HI, data);

	base = FUNC11(adev->gfx.ngg.buf[NGG_POS].gpu_addr);
	data = FUNC4(0, WD_POS_BUF_BASE, BASE, base);
	FUNC6(GC, 0, mmWD_POS_BUF_BASE, data);

	base = FUNC12(adev->gfx.ngg.buf[NGG_POS].gpu_addr);
	data = FUNC4(0, WD_POS_BUF_BASE_HI, BASE_HI, base);
	FUNC6(GC, 0, mmWD_POS_BUF_BASE_HI, data);

	base = FUNC11(adev->gfx.ngg.buf[NGG_CNTL].gpu_addr);
	data = FUNC4(0, WD_CNTL_SB_BUF_BASE, BASE, base);
	FUNC6(GC, 0, mmWD_CNTL_SB_BUF_BASE, data);

	base = FUNC12(adev->gfx.ngg.buf[NGG_CNTL].gpu_addr);
	data = FUNC4(0, WD_CNTL_SB_BUF_BASE_HI, BASE_HI, base);
	FUNC6(GC, 0, mmWD_CNTL_SB_BUF_BASE_HI, data);

	/* Clear GDS reserved memory */
	r = FUNC7(ring, 17);
	if (r) {
		FUNC0("amdgpu: NGG failed to lock ring %s (%d).\n",
			  ring->name, r);
		return r;
	}

	FUNC10(ring, 0, false,
				   FUNC5(GC, 0, mmGDS_VMID0_SIZE),
			           (adev->gds.gds_size +
				    adev->gfx.ngg.gds_reserve_size));

	FUNC9(ring, FUNC1(PACKET3_DMA_DATA, 5));
	FUNC9(ring, (PACKET3_DMA_DATA_CP_SYNC |
				FUNC2(1) |
				FUNC3(2)));
	FUNC9(ring, 0);
	FUNC9(ring, 0);
	FUNC9(ring, adev->gfx.ngg.gds_reserve_addr);
	FUNC9(ring, 0);
	FUNC9(ring, PACKET3_DMA_DATA_CMD_RAW_WAIT |
				adev->gfx.ngg.gds_reserve_size);

	FUNC10(ring, 0, false,
				   FUNC5(GC, 0, mmGDS_VMID0_SIZE), 0);

	FUNC8(ring);

	return 0;
}