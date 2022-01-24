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
struct TYPE_3__ {int pages_allocated; int /*<<< orphan*/  num_allocated; } ;
struct v3d_dev {int /*<<< orphan*/  mm_lock; int /*<<< orphan*/  bo_lock; TYPE_1__ bo_stats; } ;
struct TYPE_4__ {int pages_mark_dirty_on_put; } ;
struct v3d_bo {TYPE_2__ base; int /*<<< orphan*/  node; } ;
struct drm_gem_object {int size; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct v3d_bo* FUNC6 (struct drm_gem_object*) ; 
 struct v3d_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct v3d_bo*) ; 

void FUNC9(struct drm_gem_object *obj)
{
	struct v3d_dev *v3d = FUNC7(obj->dev);
	struct v3d_bo *bo = FUNC6(obj);

	FUNC8(bo);

	FUNC2(&v3d->bo_lock);
	v3d->bo_stats.num_allocated--;
	v3d->bo_stats.pages_allocated -= obj->size >> PAGE_SHIFT;
	FUNC3(&v3d->bo_lock);

	FUNC4(&v3d->mm_lock);
	FUNC1(&bo->node);
	FUNC5(&v3d->mm_lock);

	/* GPU execution may have dirtied any pages in the BO. */
	bo->base.pages_mark_dirty_on_put = true;

	FUNC0(obj);
}