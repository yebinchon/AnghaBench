#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int type; int /*<<< orphan*/  remapped; int /*<<< orphan*/  rotated; } ;
struct i915_vma {TYPE_4__ ggtt_view; int /*<<< orphan*/ * pages; TYPE_2__* obj; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pages; } ;
struct TYPE_8__ {TYPE_1__ mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  I915_GGTT_VIEW_NORMAL 131 
#define  I915_GGTT_VIEW_PARTIAL 130 
#define  I915_GGTT_VIEW_REMAPPED 129 
#define  I915_GGTT_VIEW_ROTATED 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC8(struct i915_vma *vma)
{
	int ret;

	/* The vma->pages are only valid within the lifespan of the borrowed
	 * obj->mm.pages. When the obj->mm.pages sg_table is regenerated, so
	 * must be the vma->pages. A simple rule is that vma->pages must only
	 * be accessed when the obj->mm.pages are pinned.
	 */
	FUNC1(!FUNC4(vma->obj));

	switch (vma->ggtt_view.type) {
	default:
		FUNC1(vma->ggtt_view.type);
		/* fall through */
	case I915_GGTT_VIEW_NORMAL:
		vma->pages = vma->obj->mm.pages;
		return 0;

	case I915_GGTT_VIEW_ROTATED:
		vma->pages =
			FUNC7(&vma->ggtt_view.rotated, vma->obj);
		break;

	case I915_GGTT_VIEW_REMAPPED:
		vma->pages =
			FUNC6(&vma->ggtt_view.remapped, vma->obj);
		break;

	case I915_GGTT_VIEW_PARTIAL:
		vma->pages = FUNC5(&vma->ggtt_view, vma->obj);
		break;
	}

	ret = 0;
	if (FUNC2(vma->pages)) {
		ret = FUNC3(vma->pages);
		vma->pages = NULL;
		FUNC0("Failed to get pages for VMA view type %u (%d)!\n",
			  vma->ggtt_view.type, ret);
	}
	return ret;
}