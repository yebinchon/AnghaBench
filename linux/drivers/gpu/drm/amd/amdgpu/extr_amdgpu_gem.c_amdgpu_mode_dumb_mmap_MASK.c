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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ttm; } ;
struct amdgpu_bo {int flags; TYPE_1__ tbo; } ;

/* Variables and functions */
 int AMDGPU_GEM_CREATE_NO_CPU_ACCESS ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct drm_gem_object* FUNC2 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 struct amdgpu_bo* FUNC4 (struct drm_gem_object*) ; 

int FUNC5(struct drm_file *filp,
			  struct drm_device *dev,
			  uint32_t handle, uint64_t *offset_p)
{
	struct drm_gem_object *gobj;
	struct amdgpu_bo *robj;

	gobj = FUNC2(filp, handle);
	if (gobj == NULL) {
		return -ENOENT;
	}
	robj = FUNC4(gobj);
	if (FUNC1(robj->tbo.ttm) ||
	    (robj->flags & AMDGPU_GEM_CREATE_NO_CPU_ACCESS)) {
		FUNC3(gobj);
		return -EPERM;
	}
	*offset_p = FUNC0(robj);
	FUNC3(gobj);
	return 0;
}