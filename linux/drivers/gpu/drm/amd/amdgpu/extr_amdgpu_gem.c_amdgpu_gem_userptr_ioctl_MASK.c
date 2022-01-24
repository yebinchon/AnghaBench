#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_amdgpu_gem_userptr {int addr; int size; int flags; int /*<<< orphan*/  handle; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_4__ {TYPE_2__* ttm; } ;
struct amdgpu_bo {TYPE_1__ tbo; int /*<<< orphan*/  placement; void* allowed_domains; void* preferred_domains; } ;
struct TYPE_5__ {int /*<<< orphan*/  pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_CPU ; 
 void* AMDGPU_GEM_DOMAIN_GTT ; 
 int AMDGPU_GEM_USERPTR_ANONONLY ; 
 int AMDGPU_GEM_USERPTR_READONLY ; 
 int AMDGPU_GEM_USERPTR_REGISTER ; 
 int AMDGPU_GEM_USERPTR_VALIDATE ; 
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo*,void*) ; 
 int FUNC1 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*) ; 
 int FUNC3 (struct amdgpu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct drm_gem_object**) ; 
 int FUNC4 (struct amdgpu_bo*,int) ; 
 int FUNC5 (struct amdgpu_bo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,int,int) ; 
 int FUNC8 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_gem_object*) ; 
 struct amdgpu_bo* FUNC10 (struct drm_gem_object*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  ttm_bo_type_device ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,struct ttm_operation_ctx*) ; 
 int FUNC13 (int) ; 

int FUNC14(struct drm_device *dev, void *data,
			     struct drm_file *filp)
{
	struct ttm_operation_ctx ctx = { true, false };
	struct amdgpu_device *adev = dev->dev_private;
	struct drm_amdgpu_gem_userptr *args = data;
	struct drm_gem_object *gobj;
	struct amdgpu_bo *bo;
	uint32_t handle;
	int r;

	args->addr = FUNC13(args->addr);

	if (FUNC11(args->addr | args->size))
		return -EINVAL;

	/* reject unknown flag values */
	if (args->flags & ~(AMDGPU_GEM_USERPTR_READONLY |
	    AMDGPU_GEM_USERPTR_ANONONLY | AMDGPU_GEM_USERPTR_VALIDATE |
	    AMDGPU_GEM_USERPTR_REGISTER))
		return -EINVAL;

	if (!(args->flags & AMDGPU_GEM_USERPTR_READONLY) &&
	     !(args->flags & AMDGPU_GEM_USERPTR_REGISTER)) {

		/* if we want to write to it we must install a MMU notifier */
		return -EACCES;
	}

	/* create a gem object to contain this object in */
	r = FUNC3(adev, args->size, 0, AMDGPU_GEM_DOMAIN_CPU,
				     0, ttm_bo_type_device, NULL, &gobj);
	if (r)
		return r;

	bo = FUNC10(gobj);
	bo->preferred_domains = AMDGPU_GEM_DOMAIN_GTT;
	bo->allowed_domains = AMDGPU_GEM_DOMAIN_GTT;
	r = FUNC7(bo->tbo.ttm, args->addr, args->flags);
	if (r)
		goto release_object;

	if (args->flags & AMDGPU_GEM_USERPTR_REGISTER) {
		r = FUNC4(bo, args->addr);
		if (r)
			goto release_object;
	}

	if (args->flags & AMDGPU_GEM_USERPTR_VALIDATE) {
		r = FUNC5(bo, bo->tbo.ttm->pages);
		if (r)
			goto release_object;

		r = FUNC1(bo, true);
		if (r)
			goto user_pages_done;

		FUNC0(bo, AMDGPU_GEM_DOMAIN_GTT);
		r = FUNC12(&bo->tbo, &bo->placement, &ctx);
		FUNC2(bo);
		if (r)
			goto user_pages_done;
	}

	r = FUNC8(filp, gobj, &handle);
	if (r)
		goto user_pages_done;

	args->handle = handle;

user_pages_done:
	if (args->flags & AMDGPU_GEM_USERPTR_VALIDATE)
		FUNC6(bo->tbo.ttm);

release_object:
	FUNC9(gobj);

	return r;
}