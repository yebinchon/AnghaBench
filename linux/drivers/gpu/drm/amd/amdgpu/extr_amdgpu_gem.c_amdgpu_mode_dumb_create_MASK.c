#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_mode_create_dumb {int size; int height; int /*<<< orphan*/  handle; scalar_t__ pitch; int /*<<< orphan*/  bpp; int /*<<< orphan*/  width; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct TYPE_2__ {scalar_t__ buffer_funcs_enabled; } ;
struct amdgpu_device {TYPE_1__ mman; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED ; 
 int AMDGPU_GEM_CREATE_CPU_GTT_USWC ; 
 int AMDGPU_GEM_CREATE_VRAM_CLEARED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 int FUNC5 (struct amdgpu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct drm_gem_object**) ; 
 int FUNC6 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  ttm_bo_type_device ; 

int FUNC8(struct drm_file *file_priv,
			    struct drm_device *dev,
			    struct drm_mode_create_dumb *args)
{
	struct amdgpu_device *adev = dev->dev_private;
	struct drm_gem_object *gobj;
	uint32_t handle;
	u64 flags = AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED |
		    AMDGPU_GEM_CREATE_CPU_GTT_USWC;
	u32 domain;
	int r;

	/*
	 * The buffer returned from this function should be cleared, but
	 * it can only be done if the ring is enabled or we'll fail to
	 * create the buffer.
	 */
	if (adev->mman.buffer_funcs_enabled)
		flags |= AMDGPU_GEM_CREATE_VRAM_CLEARED;

	args->pitch = FUNC2(adev, args->width,
					 FUNC1(args->bpp, 8), 0);
	args->size = (u64)args->pitch * args->height;
	args->size = FUNC0(args->size, PAGE_SIZE);
	domain = FUNC3(adev,
				FUNC4(adev, flags));
	r = FUNC5(adev, args->size, 0, domain, flags,
				     ttm_bo_type_device, NULL, &gobj);
	if (r)
		return -ENOMEM;

	r = FUNC6(file_priv, gobj, &handle);
	/* drop reference from allocate - handle holds it now */
	FUNC7(gobj);
	if (r) {
		return r;
	}
	args->handle = handle;
	return 0;
}