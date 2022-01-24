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
struct TYPE_4__ {int pages_allocated; int /*<<< orphan*/  num_allocated; } ;
struct v3d_dev {int /*<<< orphan*/  bo_lock; TYPE_2__ bo_stats; int /*<<< orphan*/  mm_lock; int /*<<< orphan*/  mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
struct v3d_bo {int /*<<< orphan*/  node; TYPE_1__ base; } ;
struct sg_table {int dummy; } ;
struct drm_gem_object {int size; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int GMP_GRANULARITY ; 
 scalar_t__ FUNC0 (struct sg_table*) ; 
 int PAGE_SHIFT ; 
 int FUNC1 (struct sg_table*) ; 
 struct sg_table* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct v3d_bo* FUNC8 (struct drm_gem_object*) ; 
 struct v3d_dev* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct v3d_bo*) ; 

__attribute__((used)) static int
FUNC11(struct drm_gem_object *obj)
{
	struct v3d_dev *v3d = FUNC9(obj->dev);
	struct v3d_bo *bo = FUNC8(obj);
	struct sg_table *sgt;
	int ret;

	/* So far we pin the BO in the MMU for its lifetime, so use
	 * shmem's helper for getting a lifetime sgt.
	 */
	sgt = FUNC2(&bo->base.base);
	if (FUNC0(sgt))
		return FUNC1(sgt);

	FUNC6(&v3d->mm_lock);
	/* Allocate the object's space in the GPU's page tables.
	 * Inserting PTEs will happen later, but the offset is for the
	 * lifetime of the BO.
	 */
	ret = FUNC3(&v3d->mm, &bo->node,
					 obj->size >> PAGE_SHIFT,
					 GMP_GRANULARITY >> PAGE_SHIFT, 0, 0);
	FUNC7(&v3d->mm_lock);
	if (ret)
		return ret;

	/* Track stats for /debug/dri/n/bo_stats. */
	FUNC4(&v3d->bo_lock);
	v3d->bo_stats.num_allocated++;
	v3d->bo_stats.pages_allocated += obj->size >> PAGE_SHIFT;
	FUNC5(&v3d->bo_lock);

	FUNC10(bo);

	return 0;
}