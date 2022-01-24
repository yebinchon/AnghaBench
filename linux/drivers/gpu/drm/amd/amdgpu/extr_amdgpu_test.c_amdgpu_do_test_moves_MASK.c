#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_12__ {unsigned int gart_size; int gart_start; int vram_start; } ;
struct TYPE_10__ {scalar_t__ ring_size; scalar_t__ ring_obj; } ;
struct TYPE_11__ {TYPE_4__ ih; } ;
struct TYPE_9__ {scalar_t__ wb_obj; } ;
struct TYPE_7__ {struct amdgpu_ring* buffer_funcs_ring; } ;
struct amdgpu_device {TYPE_6__ gmc; TYPE_5__ irq; TYPE_3__ wb; TYPE_2__** rings; TYPE_1__ mman; } ;
struct amdgpu_bo_param {unsigned int size; void* domain; int /*<<< orphan*/ * resv; int /*<<< orphan*/  type; scalar_t__ flags; int /*<<< orphan*/  byte_align; } ;
struct amdgpu_bo {int /*<<< orphan*/  tbo; } ;
typedef  int /*<<< orphan*/  bp ;
struct TYPE_8__ {scalar_t__ ring_size; } ;

/* Variables and functions */
 void* AMDGPU_GEM_DOMAIN_GTT ; 
 void* AMDGPU_GEM_DOMAIN_VRAM ; 
 scalar_t__ AMDGPU_GPU_PAGE_SIZE ; 
 int AMDGPU_IB_POOL_SIZE ; 
 int AMDGPU_MAX_RINGS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC2 (struct amdgpu_device*,struct amdgpu_bo_param*,struct amdgpu_bo**) ; 
 int FUNC3 (struct amdgpu_bo*) ; 
 int FUNC4 (struct amdgpu_bo*,void**) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_bo*) ; 
 int FUNC6 (struct amdgpu_bo*,void*) ; 
 int FUNC7 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_bo*) ; 
 int FUNC11 (struct amdgpu_ring*,int,int,unsigned int,int /*<<< orphan*/ *,struct dma_fence**,int,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct dma_fence*) ; 
 int FUNC14 (struct dma_fence*,int) ; 
 struct amdgpu_bo** FUNC15 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC17 (struct amdgpu_bo_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  ttm_bo_type_kernel ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static void FUNC20(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring = adev->mman.buffer_funcs_ring;
	struct amdgpu_bo *vram_obj = NULL;
	struct amdgpu_bo **gtt_obj = NULL;
	struct amdgpu_bo_param bp;
	uint64_t gart_addr, vram_addr;
	unsigned n, size;
	int i, r;

	size = 1024 * 1024;

	/* Number of tests =
	 * (Total GTT - IB pool - writeback page - ring buffers) / test size
	 */
	n = adev->gmc.gart_size - AMDGPU_IB_POOL_SIZE*64*1024;
	for (i = 0; i < AMDGPU_MAX_RINGS; ++i)
		if (adev->rings[i])
			n -= adev->rings[i]->ring_size;
	if (adev->wb.wb_obj)
		n -= AMDGPU_GPU_PAGE_SIZE;
	if (adev->irq.ih.ring_obj)
		n -= adev->irq.ih.ring_size;
	n /= size;

	gtt_obj = FUNC15(n, sizeof(*gtt_obj), GFP_KERNEL);
	if (!gtt_obj) {
		FUNC0("Failed to allocate %d pointers\n", n);
		r = 1;
		goto out_cleanup;
	}
	FUNC17(&bp, 0, sizeof(bp));
	bp.size = size;
	bp.byte_align = PAGE_SIZE;
	bp.domain = AMDGPU_GEM_DOMAIN_VRAM;
	bp.flags = 0;
	bp.type = ttm_bo_type_kernel;
	bp.resv = NULL;

	r = FUNC2(adev, &bp, &vram_obj);
	if (r) {
		FUNC0("Failed to create VRAM object\n");
		goto out_cleanup;
	}
	r = FUNC7(vram_obj, false);
	if (FUNC19(r != 0))
		goto out_unref;
	r = FUNC6(vram_obj, AMDGPU_GEM_DOMAIN_VRAM);
	if (r) {
		FUNC0("Failed to pin VRAM object\n");
		goto out_unres;
	}
	vram_addr = FUNC3(vram_obj);
	for (i = 0; i < n; i++) {
		void *gtt_map, *vram_map;
		void **gart_start, **gart_end;
		void **vram_start, **vram_end;
		struct dma_fence *fence = NULL;

		bp.domain = AMDGPU_GEM_DOMAIN_GTT;
		r = FUNC2(adev, &bp, gtt_obj + i);
		if (r) {
			FUNC0("Failed to create GTT object %d\n", i);
			goto out_lclean;
		}

		r = FUNC7(gtt_obj[i], false);
		if (FUNC19(r != 0))
			goto out_lclean_unref;
		r = FUNC6(gtt_obj[i], AMDGPU_GEM_DOMAIN_GTT);
		if (r) {
			FUNC0("Failed to pin GTT object %d\n", i);
			goto out_lclean_unres;
		}
		r = FUNC12(&gtt_obj[i]->tbo);
		if (r) {
			FUNC0("%p bind failed\n", gtt_obj[i]);
			goto out_lclean_unpin;
		}
		gart_addr = FUNC3(gtt_obj[i]);

		r = FUNC4(gtt_obj[i], &gtt_map);
		if (r) {
			FUNC0("Failed to map GTT object %d\n", i);
			goto out_lclean_unpin;
		}

		for (gart_start = gtt_map, gart_end = gtt_map + size;
		     gart_start < gart_end;
		     gart_start++)
			*gart_start = gart_start;

		FUNC5(gtt_obj[i]);

		r = FUNC11(ring, gart_addr, vram_addr,
				       size, NULL, &fence, false, false);

		if (r) {
			FUNC0("Failed GTT->VRAM copy %d\n", i);
			goto out_lclean_unpin;
		}

		r = FUNC14(fence, false);
		if (r) {
			FUNC0("Failed to wait for GTT->VRAM fence %d\n", i);
			goto out_lclean_unpin;
		}

		FUNC13(fence);

		r = FUNC4(vram_obj, &vram_map);
		if (r) {
			FUNC0("Failed to map VRAM object after copy %d\n", i);
			goto out_lclean_unpin;
		}

		for (gart_start = gtt_map, gart_end = gtt_map + size,
		     vram_start = vram_map, vram_end = vram_map + size;
		     vram_start < vram_end;
		     gart_start++, vram_start++) {
			if (*vram_start != gart_start) {
				FUNC0("Incorrect GTT->VRAM copy %d: Got 0x%p, "
					  "expected 0x%p (GTT/VRAM offset "
					  "0x%16llx/0x%16llx)\n",
					  i, *vram_start, gart_start,
					  (unsigned long long)
					  (gart_addr - adev->gmc.gart_start +
					   (void*)gart_start - gtt_map),
					  (unsigned long long)
					  (vram_addr - adev->gmc.vram_start +
					   (void*)gart_start - gtt_map));
				FUNC5(vram_obj);
				goto out_lclean_unpin;
			}
			*vram_start = vram_start;
		}

		FUNC5(vram_obj);

		r = FUNC11(ring, vram_addr, gart_addr,
				       size, NULL, &fence, false, false);

		if (r) {
			FUNC0("Failed VRAM->GTT copy %d\n", i);
			goto out_lclean_unpin;
		}

		r = FUNC14(fence, false);
		if (r) {
			FUNC0("Failed to wait for VRAM->GTT fence %d\n", i);
			goto out_lclean_unpin;
		}

		FUNC13(fence);

		r = FUNC4(gtt_obj[i], &gtt_map);
		if (r) {
			FUNC0("Failed to map GTT object after copy %d\n", i);
			goto out_lclean_unpin;
		}

		for (gart_start = gtt_map, gart_end = gtt_map + size,
		     vram_start = vram_map, vram_end = vram_map + size;
		     gart_start < gart_end;
		     gart_start++, vram_start++) {
			if (*gart_start != vram_start) {
				FUNC0("Incorrect VRAM->GTT copy %d: Got 0x%p, "
					  "expected 0x%p (VRAM/GTT offset "
					  "0x%16llx/0x%16llx)\n",
					  i, *gart_start, vram_start,
					  (unsigned long long)
					  (vram_addr - adev->gmc.vram_start +
					   (void*)vram_start - vram_map),
					  (unsigned long long)
					  (gart_addr - adev->gmc.gart_start +
					   (void*)vram_start - vram_map));
				FUNC5(gtt_obj[i]);
				goto out_lclean_unpin;
			}
		}

		FUNC5(gtt_obj[i]);

		FUNC1("Tested GTT->VRAM and VRAM->GTT copy for GTT offset 0x%llx\n",
			 gart_addr - adev->gmc.gart_start);
		continue;

out_lclean_unpin:
		FUNC8(gtt_obj[i]);
out_lclean_unres:
		FUNC10(gtt_obj[i]);
out_lclean_unref:
		FUNC9(&gtt_obj[i]);
out_lclean:
		for (--i; i >= 0; --i) {
			FUNC8(gtt_obj[i]);
			FUNC10(gtt_obj[i]);
			FUNC9(&gtt_obj[i]);
		}
		if (fence)
			FUNC13(fence);
		break;
	}

	FUNC8(vram_obj);
out_unres:
	FUNC10(vram_obj);
out_unref:
	FUNC9(&vram_obj);
out_cleanup:
	FUNC16(gtt_obj);
	if (r) {
		FUNC18("Error while testing BO move\n");
	}
}