#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct drm_mm_node {int size; } ;
struct dma_resv {int dummy; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  gtt_window_lock; int /*<<< orphan*/  buffer_funcs_enabled; struct amdgpu_ring* buffer_funcs_ring; } ;
struct amdgpu_device {TYPE_1__ mman; } ;
struct amdgpu_copy_mem {int offset; TYPE_2__* mem; int /*<<< orphan*/  bo; } ;
struct TYPE_6__ {scalar_t__ start; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_BO_INVALID_OFFSET ; 
 int AMDGPU_GPU_PAGE_SIZE ; 
 int AMDGPU_GTT_MAX_TRANSFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct amdgpu_ring*,int,int,unsigned long,struct dma_resv*,struct dma_fence**,int,int) ; 
 struct drm_mm_node* FUNC3 (TYPE_2__*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int,int,struct amdgpu_ring*,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct drm_mm_node*,TYPE_2__*) ; 
 struct dma_fence* FUNC6 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_fence*) ; 
 scalar_t__ FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ ,int,int const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct amdgpu_device *adev,
			       struct amdgpu_copy_mem *src,
			       struct amdgpu_copy_mem *dst,
			       uint64_t size,
			       struct dma_resv *resv,
			       struct dma_fence **f)
{
	struct amdgpu_ring *ring = adev->mman.buffer_funcs_ring;
	struct drm_mm_node *src_mm, *dst_mm;
	uint64_t src_node_start, dst_node_start, src_node_size,
		 dst_node_size, src_page_offset, dst_page_offset;
	struct dma_fence *fence = NULL;
	int r = 0;
	const uint64_t GTT_MAX_BYTES = (AMDGPU_GTT_MAX_TRANSFER_SIZE *
					AMDGPU_GPU_PAGE_SIZE);

	if (!adev->mman.buffer_funcs_enabled) {
		FUNC0("Trying to move memory with ring turned off.\n");
		return -EINVAL;
	}

	src_mm = FUNC3(src->mem, &src->offset);
	src_node_start = FUNC5(src->bo, src_mm, src->mem) +
					     src->offset;
	src_node_size = (src_mm->size << PAGE_SHIFT) - src->offset;
	src_page_offset = src_node_start & (PAGE_SIZE - 1);

	dst_mm = FUNC3(dst->mem, &dst->offset);
	dst_node_start = FUNC5(dst->bo, dst_mm, dst->mem) +
					     dst->offset;
	dst_node_size = (dst_mm->size << PAGE_SHIFT) - dst->offset;
	dst_page_offset = dst_node_start & (PAGE_SIZE - 1);

	FUNC11(&adev->mman.gtt_window_lock);

	while (size) {
		unsigned long cur_size;
		uint64_t from = src_node_start, to = dst_node_start;
		struct dma_fence *next;

		/* Copy size cannot exceed GTT_MAX_BYTES. So if src or dst
		 * begins at an offset, then adjust the size accordingly
		 */
		cur_size = FUNC10(FUNC9(src_node_size, dst_node_size), size,
				GTT_MAX_BYTES);
		if (cur_size + src_page_offset > GTT_MAX_BYTES ||
		    cur_size + dst_page_offset > GTT_MAX_BYTES)
			cur_size -= FUNC8(src_page_offset, dst_page_offset);

		/* Map only what needs to be accessed. Map src to window 0 and
		 * dst to window 1
		 */
		if (src->mem->start == AMDGPU_BO_INVALID_OFFSET) {
			r = FUNC4(src->bo, src->mem,
					FUNC1(cur_size + src_page_offset),
					src_node_start, 0, ring,
					&from);
			if (r)
				goto error;
			/* Adjust the offset because amdgpu_map_buffer returns
			 * start of mapped page
			 */
			from += src_page_offset;
		}

		if (dst->mem->start == AMDGPU_BO_INVALID_OFFSET) {
			r = FUNC4(dst->bo, dst->mem,
					FUNC1(cur_size + dst_page_offset),
					dst_node_start, 1, ring,
					&to);
			if (r)
				goto error;
			to += dst_page_offset;
		}

		r = FUNC2(ring, from, to, cur_size,
				       resv, &next, false, true);
		if (r)
			goto error;

		FUNC7(fence);
		fence = next;

		size -= cur_size;
		if (!size)
			break;

		src_node_size -= cur_size;
		if (!src_node_size) {
			src_node_start = FUNC5(src->bo, ++src_mm,
							     src->mem);
			src_node_size = (src_mm->size << PAGE_SHIFT);
			src_page_offset = 0;
		} else {
			src_node_start += cur_size;
			src_page_offset = src_node_start & (PAGE_SIZE - 1);
		}
		dst_node_size -= cur_size;
		if (!dst_node_size) {
			dst_node_start = FUNC5(dst->bo, ++dst_mm,
							     dst->mem);
			dst_node_size = (dst_mm->size << PAGE_SHIFT);
			dst_page_offset = 0;
		} else {
			dst_node_start += cur_size;
			dst_page_offset = dst_node_start & (PAGE_SIZE - 1);
		}
	}
error:
	FUNC12(&adev->mman.gtt_window_lock);
	if (f)
		*f = FUNC6(fence);
	FUNC7(fence);
	return r;
}