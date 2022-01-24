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
typedef  int uint64_t ;
typedef  int u32 ;
struct radeon_sync {int dummy; } ;
struct radeon_ring {int /*<<< orphan*/  idx; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {struct radeon_ring* ring; TYPE_2__* asic; } ;
struct dma_resv {int dummy; } ;
struct TYPE_3__ {int dma_ring_index; } ;
struct TYPE_4__ {TYPE_1__ copy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMA_PACKET_COPY ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct radeon_fence* FUNC3 (int) ; 
 unsigned int RADEON_GPU_PAGE_SHIFT ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct radeon_device*,struct radeon_fence**,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_sync*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,struct radeon_sync*,struct radeon_fence*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*,struct radeon_sync*,struct dma_resv*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*,struct radeon_sync*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int) ; 

struct radeon_fence *FUNC15(struct radeon_device *rdev,
				 uint64_t src_offset, uint64_t dst_offset,
				 unsigned num_gpu_pages,
				 struct dma_resv *resv)
{
	struct radeon_fence *fence;
	struct radeon_sync sync;
	int ring_index = rdev->asic->copy.dma_ring_index;
	struct radeon_ring *ring = &rdev->ring[ring_index];
	u32 size_in_bytes, cur_size_in_bytes;
	int i, num_loops;
	int r = 0;

	FUNC10(&sync);

	size_in_bytes = (num_gpu_pages << RADEON_GPU_PAGE_SHIFT);
	num_loops = FUNC0(size_in_bytes, 0xfffff);
	r = FUNC6(rdev, ring, num_loops * 5 + 11);
	if (r) {
		FUNC2("radeon: moving bo (%d).\n", r);
		FUNC11(rdev, &sync, NULL);
		return FUNC3(r);
	}

	FUNC12(rdev, &sync, resv, false);
	FUNC13(rdev, &sync, ring->idx);

	for (i = 0; i < num_loops; i++) {
		cur_size_in_bytes = size_in_bytes;
		if (cur_size_in_bytes > 0xFFFFF)
			cur_size_in_bytes = 0xFFFFF;
		size_in_bytes -= cur_size_in_bytes;
		FUNC9(ring, FUNC1(DMA_PACKET_COPY, 1, 0, 0, cur_size_in_bytes));
		FUNC9(ring, FUNC4(dst_offset));
		FUNC9(ring, FUNC4(src_offset));
		FUNC9(ring, FUNC14(dst_offset) & 0xff);
		FUNC9(ring, FUNC14(src_offset) & 0xff);
		src_offset += cur_size_in_bytes;
		dst_offset += cur_size_in_bytes;
	}

	r = FUNC5(rdev, &fence, ring->idx);
	if (r) {
		FUNC8(rdev, ring);
		FUNC11(rdev, &sync, NULL);
		return FUNC3(r);
	}

	FUNC7(rdev, ring, false);
	FUNC11(rdev, &sync, fence);

	return fence;
}