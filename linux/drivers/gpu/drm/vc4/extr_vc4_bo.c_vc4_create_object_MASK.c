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
struct vc4_dev {int /*<<< orphan*/  bo_lock; TYPE_1__* bo_labels; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_4__ {struct drm_gem_object base; } ;
struct vc4_bo {size_t label; TYPE_2__ base; int /*<<< orphan*/  madv_lock; int /*<<< orphan*/  usecnt; int /*<<< orphan*/  madv; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {size_t size_allocated; int /*<<< orphan*/  num_allocated; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_gem_object* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t VC4_BO_TYPE_KERNEL ; 
 int /*<<< orphan*/  VC4_MADV_WILLNEED ; 
 struct vc4_bo* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vc4_dev* FUNC6 (struct drm_device*) ; 

struct drm_gem_object *FUNC7(struct drm_device *dev, size_t size)
{
	struct vc4_dev *vc4 = FUNC6(dev);
	struct vc4_bo *bo;

	bo = FUNC1(sizeof(*bo), GFP_KERNEL);
	if (!bo)
		return FUNC0(-ENOMEM);

	bo->madv = VC4_MADV_WILLNEED;
	FUNC5(&bo->usecnt, 0);
	FUNC2(&bo->madv_lock);
	FUNC3(&vc4->bo_lock);
	bo->label = VC4_BO_TYPE_KERNEL;
	vc4->bo_labels[VC4_BO_TYPE_KERNEL].num_allocated++;
	vc4->bo_labels[VC4_BO_TYPE_KERNEL].size_allocated += size;
	FUNC4(&vc4->bo_lock);

	return &bo->base.base;
}