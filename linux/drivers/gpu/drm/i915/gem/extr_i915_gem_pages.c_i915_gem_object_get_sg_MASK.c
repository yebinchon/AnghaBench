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
typedef  void scatterlist ;
struct i915_gem_object_page_iter {unsigned int sg_idx; int /*<<< orphan*/  radix; int /*<<< orphan*/  lock; void* sg_pos; } ;
struct TYPE_4__ {unsigned int size; } ;
struct TYPE_3__ {struct i915_gem_object_page_iter get_page; } ;
struct drm_i915_gem_object {TYPE_2__ base; TYPE_1__ mm; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SHIFT ; 
 unsigned int FUNC1 (unsigned int) ; 
 void* FUNC2 (void*) ; 
 unsigned int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned int,void*) ; 
 void* FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (int) ; 
 int FUNC13 (void*) ; 
 void* FUNC14 (unsigned int) ; 
 unsigned long FUNC15 (void*) ; 

struct scatterlist *
FUNC16(struct drm_i915_gem_object *obj,
		       unsigned int n,
		       unsigned int *offset)
{
	struct i915_gem_object_page_iter *iter = &obj->mm.get_page;
	struct scatterlist *sg;
	unsigned int idx, count;

	FUNC5();
	FUNC0(n >= obj->base.size >> PAGE_SHIFT);
	FUNC0(!FUNC4(obj));

	/* As we iterate forward through the sg, we record each entry in a
	 * radixtree for quick repeated (backwards) lookups. If we have seen
	 * this index previously, we will have an entry for it.
	 *
	 * Initial lookup is O(N), but this is amortized to O(1) for
	 * sequential page access (where each new request is consecutive
	 * to the previous one). Repeated lookups are O(lg(obj->base.size)),
	 * i.e. O(1) with a large constant!
	 */
	if (n < FUNC1(iter->sg_idx))
		goto lookup;

	FUNC6(&iter->lock);

	/* We prefer to reuse the last sg so that repeated lookup of this
	 * (or the subsequent) sg are fast - comparing against the last
	 * sg is faster than going through the radixtree.
	 */

	sg = iter->sg_pos;
	idx = iter->sg_idx;
	count = FUNC3(sg);

	while (idx + count <= n) {
		void *entry;
		unsigned long i;
		int ret;

		/* If we cannot allocate and insert this entry, or the
		 * individual pages from this range, cancel updating the
		 * sg_idx so that on this lookup we are forced to linearly
		 * scan onwards, but on future lookups we will try the
		 * insertion again (in which case we need to be careful of
		 * the error return reporting that we have already inserted
		 * this index).
		 */
		ret = FUNC8(&iter->radix, idx, sg);
		if (ret && ret != -EEXIST)
			goto scan;

		entry = FUNC14(idx);
		for (i = 1; i < count; i++) {
			ret = FUNC8(&iter->radix, idx + i, entry);
			if (ret && ret != -EEXIST)
				goto scan;
		}

		idx += count;
		sg = FUNC2(sg);
		count = FUNC3(sg);
	}

scan:
	iter->sg_pos = sg;
	iter->sg_idx = idx;

	FUNC7(&iter->lock);

	if (FUNC12(n < idx)) /* insertion completed by another thread */
		goto lookup;

	/* In case we failed to insert the entry into the radixtree, we need
	 * to look beyond the current sg.
	 */
	while (idx + count <= n) {
		idx += count;
		sg = FUNC2(sg);
		count = FUNC3(sg);
	}

	*offset = n - idx;
	return sg;

lookup:
	FUNC10();

	sg = FUNC9(&iter->radix, n);
	FUNC0(!sg);

	/* If this index is in the middle of multi-page sg entry,
	 * the radix tree will contain a value entry that points
	 * to the start of that range. We will return the pointer to
	 * the base page and the offset of this page within the
	 * sg entry's range.
	 */
	*offset = 0;
	if (FUNC12(FUNC13(sg))) {
		unsigned long base = FUNC15(sg);

		sg = FUNC9(&iter->radix, base);
		FUNC0(!sg);

		*offset = n - base;
	}

	FUNC11();

	return sg;
}