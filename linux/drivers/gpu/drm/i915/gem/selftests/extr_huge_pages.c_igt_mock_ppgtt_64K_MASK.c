#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct object_info   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int sg; unsigned int gtt; } ;
struct TYPE_9__ {int /*<<< orphan*/  size; int /*<<< orphan*/  start; } ;
struct TYPE_7__ {int /*<<< orphan*/  sg; } ;
struct TYPE_8__ {TYPE_1__ page_sizes; } ;
struct i915_vma {TYPE_4__ page_sizes; TYPE_3__ node; TYPE_2__ mm; } ;
struct TYPE_11__ {struct drm_i915_private* i915; } ;
struct i915_ppgtt {TYPE_5__ vm; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {TYPE_4__ page_sizes; TYPE_3__ node; TYPE_2__ mm; } ;
struct object_info {unsigned int size; unsigned int gtt; unsigned int offset; } ;

/* Variables and functions */
 int FUNC0 (TYPE_6__ const*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  I915_GTT_PAGE_SIZE_2M ; 
 int I915_GTT_PAGE_SIZE_4K ; 
 int I915_GTT_PAGE_SIZE_64K ; 
 int /*<<< orphan*/  I915_MM_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct i915_vma*) ; 
 unsigned int PIN_OFFSET_FIXED ; 
 unsigned int PIN_USER ; 
 int FUNC4 (struct i915_vma*) ; 
 unsigned int SZ_128K ; 
 unsigned int SZ_2M ; 
 unsigned int SZ_4K ; 
 unsigned int SZ_64K ; 
 int /*<<< orphan*/  FUNC5 (struct i915_vma*,int /*<<< orphan*/ ) ; 
 struct i915_vma* FUNC6 (struct drm_i915_private*,unsigned int,int) ; 
 int FUNC7 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC9 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC10 (struct i915_vma*) ; 
 struct i915_vma* FUNC11 (struct i915_vma*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct i915_vma*) ; 
 int FUNC14 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC15 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(void *arg)
{
	struct i915_ppgtt *ppgtt = arg;
	struct drm_i915_private *i915 = ppgtt->vm.i915;
	struct drm_i915_gem_object *obj;
	const struct object_info {
		unsigned int size;
		unsigned int gtt;
		unsigned int offset;
	} objects[] = {
		/* Cases with forced padding/alignment */
		{
			.size = SZ_64K,
			.gtt = I915_GTT_PAGE_SIZE_64K,
			.offset = 0,
		},
		{
			.size = SZ_64K + SZ_4K,
			.gtt = I915_GTT_PAGE_SIZE_4K,
			.offset = 0,
		},
		{
			.size = SZ_64K - SZ_4K,
			.gtt = I915_GTT_PAGE_SIZE_4K,
			.offset = 0,
		},
		{
			.size = SZ_2M,
			.gtt = I915_GTT_PAGE_SIZE_64K,
			.offset = 0,
		},
		{
			.size = SZ_2M - SZ_4K,
			.gtt = I915_GTT_PAGE_SIZE_4K,
			.offset = 0,
		},
		{
			.size = SZ_2M + SZ_4K,
			.gtt = I915_GTT_PAGE_SIZE_64K | I915_GTT_PAGE_SIZE_4K,
			.offset = 0,
		},
		{
			.size = SZ_2M + SZ_64K,
			.gtt = I915_GTT_PAGE_SIZE_64K,
			.offset = 0,
		},
		{
			.size = SZ_2M - SZ_64K,
			.gtt = I915_GTT_PAGE_SIZE_64K,
			.offset = 0,
		},
		/* Try without any forced padding/alignment */
		{
			.size = SZ_64K,
			.offset = SZ_2M,
			.gtt = I915_GTT_PAGE_SIZE_4K,
		},
		{
			.size = SZ_128K,
			.offset = SZ_2M - SZ_64K,
			.gtt = I915_GTT_PAGE_SIZE_4K,
		},
	};
	struct i915_vma *vma;
	int i, single;
	int err;

	/*
	 * Sanity check some of the trickiness with 64K pages -- either we can
	 * safely mark the whole page-table(2M block) as 64K, or we have to
	 * always fallback to 4K.
	 */

	if (!FUNC1(i915, I915_GTT_PAGE_SIZE_64K))
		return 0;

	for (i = 0; i < FUNC0(objects); ++i) {
		unsigned int size = objects[i].size;
		unsigned int expected_gtt = objects[i].gtt;
		unsigned int offset = objects[i].offset;
		unsigned int flags = PIN_USER;

		for (single = 0; single <= 1; single++) {
			obj = FUNC6(i915, size, !!single);
			if (FUNC3(obj))
				return FUNC4(obj);

			err = FUNC7(obj);
			if (err)
				goto out_object_put;

			/*
			 * Disable 2M pages -- We only want to use 64K/4K pages
			 * for this test.
			 */
			obj->mm.page_sizes.sg &= ~I915_GTT_PAGE_SIZE_2M;

			vma = FUNC11(obj, &ppgtt->vm, NULL);
			if (FUNC3(vma)) {
				err = FUNC4(vma);
				goto out_object_unpin;
			}

			if (offset)
				flags |= PIN_OFFSET_FIXED | offset;

			err = FUNC12(vma, 0, 0, flags);
			if (err)
				goto out_vma_close;

			err = FUNC14(vma);
			if (err)
				goto out_vma_unpin;

			if (!offset && vma->page_sizes.sg & I915_GTT_PAGE_SIZE_64K) {
				if (!FUNC2(vma->node.start,
						I915_GTT_PAGE_SIZE_2M)) {
					FUNC15("node.start(%llx) not aligned to 2M\n",
					       vma->node.start);
					err = -EINVAL;
					goto out_vma_unpin;
				}

				if (!FUNC2(vma->node.size,
						I915_GTT_PAGE_SIZE_2M)) {
					FUNC15("node.size(%llx) not aligned to 2M\n",
					       vma->node.size);
					err = -EINVAL;
					goto out_vma_unpin;
				}
			}

			if (vma->page_sizes.gtt != expected_gtt) {
				FUNC15("gtt=%u, expected=%u, i=%d, single=%s\n",
				       vma->page_sizes.gtt, expected_gtt, i,
				       FUNC16(!!single));
				err = -EINVAL;
				goto out_vma_unpin;
			}

			FUNC13(vma);
			FUNC10(vma);

			FUNC9(obj);
			FUNC5(obj, I915_MM_NORMAL);
			FUNC8(obj);
		}
	}

	return 0;

out_vma_unpin:
	FUNC13(vma);
out_vma_close:
	FUNC10(vma);
out_object_unpin:
	FUNC9(obj);
out_object_put:
	FUNC8(obj);

	return err;
}