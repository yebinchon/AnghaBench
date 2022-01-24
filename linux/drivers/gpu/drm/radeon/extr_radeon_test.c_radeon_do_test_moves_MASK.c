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
typedef  int uint64_t ;
struct radeon_fence {int dummy; } ;
struct TYPE_4__ {unsigned int gtt_size; int gtt_start; int vram_start; } ;
struct radeon_device {unsigned int gart_pin_size; TYPE_1__ mc; } ;
struct TYPE_5__ {int /*<<< orphan*/  resv; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct radeon_bo {TYPE_3__ tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct radeon_fence*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC3 (struct radeon_fence*) ; 
 int R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 unsigned int RADEON_GPU_PAGE_SIZE ; 
#define  RADEON_TEST_COPY_BLIT 129 
#define  RADEON_TEST_COPY_DMA 128 
 struct radeon_bo** FUNC4 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_bo**) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct radeon_device*,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct radeon_bo**) ; 
 int FUNC8 (struct radeon_bo*,void**) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_bo*) ; 
 int FUNC10 (struct radeon_bo*,int /*<<< orphan*/ ,int*) ; 
 int FUNC11 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_bo**) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_bo*) ; 
 struct radeon_fence* FUNC15 (struct radeon_device*,int,int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct radeon_device*) ; 
 struct radeon_fence* FUNC17 (struct radeon_device*,int,int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_fence**) ; 
 int FUNC20 (struct radeon_fence*,int) ; 
 scalar_t__ FUNC21 (int) ; 

__attribute__((used)) static void FUNC22(struct radeon_device *rdev, int flag)
{
	struct radeon_bo *vram_obj = NULL;
	struct radeon_bo **gtt_obj = NULL;
	uint64_t gtt_addr, vram_addr;
	unsigned n, size;
	int i, r, ring;

	switch (flag) {
	case RADEON_TEST_COPY_DMA:
		ring = FUNC18(rdev);
		break;
	case RADEON_TEST_COPY_BLIT:
		ring = FUNC16(rdev);
		break;
	default:
		FUNC0("Unknown copy method\n");
		return;
	}

	size = 1024 * 1024;

	/* Number of tests =
	 * (Total GTT - IB pool - writeback page - ring buffers) / test size
	 */
	n = rdev->mc.gtt_size - rdev->gart_pin_size;
	n /= size;

	gtt_obj = FUNC4(n, sizeof(*gtt_obj), GFP_KERNEL);
	if (!gtt_obj) {
		FUNC0("Failed to allocate %d pointers\n", n);
		r = 1;
		goto out_cleanup;
	}

	r = FUNC7(rdev, size, PAGE_SIZE, true, RADEON_GEM_DOMAIN_VRAM,
			     0, NULL, NULL, &vram_obj);
	if (r) {
		FUNC0("Failed to create VRAM object\n");
		goto out_cleanup;
	}
	r = FUNC11(vram_obj, false);
	if (FUNC21(r != 0))
		goto out_unref;
	r = FUNC10(vram_obj, RADEON_GEM_DOMAIN_VRAM, &vram_addr);
	if (r) {
		FUNC0("Failed to pin VRAM object\n");
		goto out_unres;
	}
	for (i = 0; i < n; i++) {
		void *gtt_map, *vram_map;
		void **gtt_start, **gtt_end;
		void **vram_start, **vram_end;
		struct radeon_fence *fence = NULL;

		r = FUNC7(rdev, size, PAGE_SIZE, true,
				     RADEON_GEM_DOMAIN_GTT, 0, NULL, NULL,
				     gtt_obj + i);
		if (r) {
			FUNC0("Failed to create GTT object %d\n", i);
			goto out_lclean;
		}

		r = FUNC11(gtt_obj[i], false);
		if (FUNC21(r != 0))
			goto out_lclean_unref;
		r = FUNC10(gtt_obj[i], RADEON_GEM_DOMAIN_GTT, &gtt_addr);
		if (r) {
			FUNC0("Failed to pin GTT object %d\n", i);
			goto out_lclean_unres;
		}

		r = FUNC8(gtt_obj[i], &gtt_map);
		if (r) {
			FUNC0("Failed to map GTT object %d\n", i);
			goto out_lclean_unpin;
		}

		for (gtt_start = gtt_map, gtt_end = gtt_map + size;
		     gtt_start < gtt_end;
		     gtt_start++)
			*gtt_start = gtt_start;

		FUNC9(gtt_obj[i]);

		if (ring == R600_RING_TYPE_DMA_INDEX)
			fence = FUNC17(rdev, gtt_addr, vram_addr,
						size / RADEON_GPU_PAGE_SIZE,
						vram_obj->tbo.base.resv);
		else
			fence = FUNC15(rdev, gtt_addr, vram_addr,
						 size / RADEON_GPU_PAGE_SIZE,
						 vram_obj->tbo.base.resv);
		if (FUNC2(fence)) {
			FUNC0("Failed GTT->VRAM copy %d\n", i);
			r = FUNC3(fence);
			goto out_lclean_unpin;
		}

		r = FUNC20(fence, false);
		if (r) {
			FUNC0("Failed to wait for GTT->VRAM fence %d\n", i);
			goto out_lclean_unpin;
		}

		FUNC19(&fence);

		r = FUNC8(vram_obj, &vram_map);
		if (r) {
			FUNC0("Failed to map VRAM object after copy %d\n", i);
			goto out_lclean_unpin;
		}

		for (gtt_start = gtt_map, gtt_end = gtt_map + size,
		     vram_start = vram_map, vram_end = vram_map + size;
		     vram_start < vram_end;
		     gtt_start++, vram_start++) {
			if (*vram_start != gtt_start) {
				FUNC0("Incorrect GTT->VRAM copy %d: Got 0x%p, "
					  "expected 0x%p (GTT/VRAM offset "
					  "0x%16llx/0x%16llx)\n",
					  i, *vram_start, gtt_start,
					  (unsigned long long)
					  (gtt_addr - rdev->mc.gtt_start +
					   (void*)gtt_start - gtt_map),
					  (unsigned long long)
					  (vram_addr - rdev->mc.vram_start +
					   (void*)gtt_start - gtt_map));
				FUNC9(vram_obj);
				goto out_lclean_unpin;
			}
			*vram_start = vram_start;
		}

		FUNC9(vram_obj);

		if (ring == R600_RING_TYPE_DMA_INDEX)
			fence = FUNC17(rdev, vram_addr, gtt_addr,
						size / RADEON_GPU_PAGE_SIZE,
						vram_obj->tbo.base.resv);
		else
			fence = FUNC15(rdev, vram_addr, gtt_addr,
						 size / RADEON_GPU_PAGE_SIZE,
						 vram_obj->tbo.base.resv);
		if (FUNC2(fence)) {
			FUNC0("Failed VRAM->GTT copy %d\n", i);
			r = FUNC3(fence);
			goto out_lclean_unpin;
		}

		r = FUNC20(fence, false);
		if (r) {
			FUNC0("Failed to wait for VRAM->GTT fence %d\n", i);
			goto out_lclean_unpin;
		}

		FUNC19(&fence);

		r = FUNC8(gtt_obj[i], &gtt_map);
		if (r) {
			FUNC0("Failed to map GTT object after copy %d\n", i);
			goto out_lclean_unpin;
		}

		for (gtt_start = gtt_map, gtt_end = gtt_map + size,
		     vram_start = vram_map, vram_end = vram_map + size;
		     gtt_start < gtt_end;
		     gtt_start++, vram_start++) {
			if (*gtt_start != vram_start) {
				FUNC0("Incorrect VRAM->GTT copy %d: Got 0x%p, "
					  "expected 0x%p (VRAM/GTT offset "
					  "0x%16llx/0x%16llx)\n",
					  i, *gtt_start, vram_start,
					  (unsigned long long)
					  (vram_addr - rdev->mc.vram_start +
					   (void*)vram_start - vram_map),
					  (unsigned long long)
					  (gtt_addr - rdev->mc.gtt_start +
					   (void*)vram_start - vram_map));
				FUNC9(gtt_obj[i]);
				goto out_lclean_unpin;
			}
		}

		FUNC9(gtt_obj[i]);

		FUNC1("Tested GTT->VRAM and VRAM->GTT copy for GTT offset 0x%llx\n",
			 gtt_addr - rdev->mc.gtt_start);
		continue;

out_lclean_unpin:
		FUNC12(gtt_obj[i]);
out_lclean_unres:
		FUNC14(gtt_obj[i]);
out_lclean_unref:
		FUNC13(&gtt_obj[i]);
out_lclean:
		for (--i; i >= 0; --i) {
			FUNC12(gtt_obj[i]);
			FUNC14(gtt_obj[i]);
			FUNC13(&gtt_obj[i]);
		}
		if (fence && !FUNC2(fence))
			FUNC19(&fence);
		break;
	}

	FUNC12(vram_obj);
out_unres:
	FUNC14(vram_obj);
out_unref:
	FUNC13(&vram_obj);
out_cleanup:
	FUNC5(gtt_obj);
	if (r) {
		FUNC6("Error while testing BO move\n");
	}
}