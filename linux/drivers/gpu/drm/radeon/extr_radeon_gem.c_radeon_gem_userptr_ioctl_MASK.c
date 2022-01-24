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
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct radeon_device {scalar_t__ family; int /*<<< orphan*/  exclusive_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  ttm; } ;
struct radeon_bo {int /*<<< orphan*/  placement; TYPE_2__ tbo; } ;
struct drm_radeon_gem_userptr {int addr; int size; int flags; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_6__ {TYPE_1__* mm; } ;
struct TYPE_4__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 scalar_t__ CHIP_R600 ; 
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_CPU ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_GTT ; 
 int RADEON_GEM_USERPTR_ANONONLY ; 
 int RADEON_GEM_USERPTR_READONLY ; 
 int RADEON_GEM_USERPTR_REGISTER ; 
 int RADEON_GEM_USERPTR_VALIDATE ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 struct radeon_bo* FUNC3 (struct drm_gem_object*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_bo*) ; 
 int FUNC7 (struct radeon_device*,int) ; 
 int FUNC8 (struct radeon_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct drm_gem_object**) ; 
 int FUNC9 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_bo*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,struct ttm_operation_ctx*) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct drm_device *dev, void *data,
			     struct drm_file *filp)
{
	struct ttm_operation_ctx ctx = { true, false };
	struct radeon_device *rdev = dev->dev_private;
	struct drm_radeon_gem_userptr *args = data;
	struct drm_gem_object *gobj;
	struct radeon_bo *bo;
	uint32_t handle;
	int r;

	args->addr = FUNC13(args->addr);

	if (FUNC4(args->addr | args->size))
		return -EINVAL;

	/* reject unknown flag values */
	if (args->flags & ~(RADEON_GEM_USERPTR_READONLY |
	    RADEON_GEM_USERPTR_ANONONLY | RADEON_GEM_USERPTR_VALIDATE |
	    RADEON_GEM_USERPTR_REGISTER))
		return -EINVAL;

	if (args->flags & RADEON_GEM_USERPTR_READONLY) {
		/* readonly pages not tested on older hardware */
		if (rdev->family < CHIP_R600)
			return -EINVAL;

	} else if (!(args->flags & RADEON_GEM_USERPTR_ANONONLY) ||
		   !(args->flags & RADEON_GEM_USERPTR_REGISTER)) {

		/* if we want to write to it we must require anonymous
		   memory and install a MMU notifier */
		return -EACCES;
	}

	FUNC0(&rdev->exclusive_lock);

	/* create a gem object to contain this object in */
	r = FUNC8(rdev, args->size, 0,
				     RADEON_GEM_DOMAIN_CPU, 0,
				     false, &gobj);
	if (r)
		goto handle_lockup;

	bo = FUNC3(gobj);
	r = FUNC11(bo->tbo.ttm, args->addr, args->flags);
	if (r)
		goto release_object;

	if (args->flags & RADEON_GEM_USERPTR_REGISTER) {
		r = FUNC9(bo, args->addr);
		if (r)
			goto release_object;
	}

	if (args->flags & RADEON_GEM_USERPTR_VALIDATE) {
		FUNC0(&current->mm->mmap_sem);
		r = FUNC5(bo, true);
		if (r) {
			FUNC14(&current->mm->mmap_sem);
			goto release_object;
		}

		FUNC10(bo, RADEON_GEM_DOMAIN_GTT);
		r = FUNC12(&bo->tbo, &bo->placement, &ctx);
		FUNC6(bo);
		FUNC14(&current->mm->mmap_sem);
		if (r)
			goto release_object;
	}

	r = FUNC1(filp, gobj, &handle);
	/* drop reference from allocate - handle holds it now */
	FUNC2(gobj);
	if (r)
		goto handle_lockup;

	args->handle = handle;
	FUNC14(&rdev->exclusive_lock);
	return 0;

release_object:
	FUNC2(gobj);

handle_lockup:
	FUNC14(&rdev->exclusive_lock);
	r = FUNC7(rdev, r);

	return r;
}