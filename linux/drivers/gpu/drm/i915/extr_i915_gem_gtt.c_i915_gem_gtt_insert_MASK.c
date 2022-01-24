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
typedef  scalar_t__ u64 ;
struct i915_address_space {int /*<<< orphan*/  mm; TYPE_4__* i915; } ;
struct drm_mm_node {int dummy; } ;
typedef  enum drm_mm_insert_mode { ____Placeholder_drm_mm_insert_mode } drm_mm_insert_mode ;
struct TYPE_7__ {TYPE_2__* alias; } ;
struct TYPE_5__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_8__ {TYPE_3__ ggtt; TYPE_1__ drm; } ;
struct TYPE_6__ {struct i915_address_space vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DRM_MM_INSERT_BEST ; 
 int DRM_MM_INSERT_EVICT ; 
 int DRM_MM_INSERT_HIGHEST ; 
 int DRM_MM_INSERT_LOW ; 
 int DRM_MM_INSERT_ONCE ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ I915_GTT_MIN_ALIGNMENT ; 
 scalar_t__ I915_GTT_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 unsigned int PIN_HIGH ; 
 unsigned int PIN_MAPPABLE ; 
 unsigned int PIN_NOEVICT ; 
 unsigned int PIN_NOSEARCH ; 
 scalar_t__ U64_MAX ; 
 int FUNC3 (int /*<<< orphan*/ *,struct drm_mm_node*,scalar_t__,scalar_t__,unsigned long,scalar_t__,scalar_t__,int) ; 
 int FUNC4 (struct drm_mm_node*) ; 
 int FUNC5 (struct i915_address_space*,scalar_t__,scalar_t__,unsigned long,scalar_t__,scalar_t__,unsigned int) ; 
 int FUNC6 (struct i915_address_space*,struct drm_mm_node*,scalar_t__,scalar_t__,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC10 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(struct i915_address_space *vm,
			struct drm_mm_node *node,
			u64 size, u64 alignment, unsigned long color,
			u64 start, u64 end, unsigned int flags)
{
	enum drm_mm_insert_mode mode;
	u64 offset;
	int err;

	FUNC8(&vm->i915->drm.struct_mutex);
	FUNC1(!size);
	FUNC1(!FUNC2(size, I915_GTT_PAGE_SIZE));
	FUNC1(alignment && !FUNC7(alignment));
	FUNC1(alignment && !FUNC2(alignment, I915_GTT_MIN_ALIGNMENT));
	FUNC1(start >= end);
	FUNC1(start > 0  && !FUNC2(start, I915_GTT_PAGE_SIZE));
	FUNC1(end < U64_MAX && !FUNC2(end, I915_GTT_PAGE_SIZE));
	FUNC1(vm == &vm->i915->ggtt.alias->vm);
	FUNC1(FUNC4(node));

	if (FUNC13(FUNC10(start, size, end)))
		return -ENOSPC;

	if (FUNC13(FUNC12(start, alignment) > FUNC11(end - size, alignment)))
		return -ENOSPC;

	mode = DRM_MM_INSERT_BEST;
	if (flags & PIN_HIGH)
		mode = DRM_MM_INSERT_HIGHEST;
	if (flags & PIN_MAPPABLE)
		mode = DRM_MM_INSERT_LOW;

	/* We only allocate in PAGE_SIZE/GTT_PAGE_SIZE (4096) chunks,
	 * so we know that we always have a minimum alignment of 4096.
	 * The drm_mm range manager is optimised to return results
	 * with zero alignment, so where possible use the optimal
	 * path.
	 */
	FUNC0(I915_GTT_MIN_ALIGNMENT > I915_GTT_PAGE_SIZE);
	if (alignment <= I915_GTT_MIN_ALIGNMENT)
		alignment = 0;

	err = FUNC3(&vm->mm, node,
					  size, alignment, color,
					  start, end, mode);
	if (err != -ENOSPC)
		return err;

	if (mode & DRM_MM_INSERT_ONCE) {
		err = FUNC3(&vm->mm, node,
						  size, alignment, color,
						  start, end,
						  DRM_MM_INSERT_BEST);
		if (err != -ENOSPC)
			return err;
	}

	if (flags & PIN_NOEVICT)
		return -ENOSPC;

	/*
	 * No free space, pick a slot at random.
	 *
	 * There is a pathological case here using a GTT shared between
	 * mmap and GPU (i.e. ggtt/aliasing_ppgtt but not full-ppgtt):
	 *
	 *    |<-- 256 MiB aperture -->||<-- 1792 MiB unmappable -->|
	 *         (64k objects)             (448k objects)
	 *
	 * Now imagine that the eviction LRU is ordered top-down (just because
	 * pathology meets real life), and that we need to evict an object to
	 * make room inside the aperture. The eviction scan then has to walk
	 * the 448k list before it finds one within range. And now imagine that
	 * it has to search for a new hole between every byte inside the memcpy,
	 * for several simultaneous clients.
	 *
	 * On a full-ppgtt system, if we have run out of available space, there
	 * will be lots and lots of objects in the eviction list! Again,
	 * searching that LRU list may be slow if we are also applying any
	 * range restrictions (e.g. restriction to low 4GiB) and so, for
	 * simplicity and similarilty between different GTT, try the single
	 * random replacement first.
	 */
	offset = FUNC9(start, end,
			       size, alignment ?: I915_GTT_MIN_ALIGNMENT);
	err = FUNC6(vm, node, size, offset, color, flags);
	if (err != -ENOSPC)
		return err;

	if (flags & PIN_NOSEARCH)
		return -ENOSPC;

	/* Randomly selected placement is pinned, do a search */
	err = FUNC5(vm, size, alignment, color,
				       start, end, flags);
	if (err)
		return err;

	return FUNC3(&vm->mm, node,
					   size, alignment, color,
					   start, end, DRM_MM_INSERT_EVICT);
}