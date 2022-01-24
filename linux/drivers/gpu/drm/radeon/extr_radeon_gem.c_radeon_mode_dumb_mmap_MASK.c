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
struct TYPE_2__ {int /*<<< orphan*/  ttm; } ;
struct radeon_bo {TYPE_1__ tbo; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPERM ; 
 struct drm_gem_object* FUNC0 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 struct radeon_bo* FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_bo*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct drm_file *filp,
			  struct drm_device *dev,
			  uint32_t handle, uint64_t *offset_p)
{
	struct drm_gem_object *gobj;
	struct radeon_bo *robj;

	gobj = FUNC0(filp, handle);
	if (gobj == NULL) {
		return -ENOENT;
	}
	robj = FUNC2(gobj);
	if (FUNC4(robj->tbo.ttm)) {
		FUNC1(gobj);
		return -EPERM;
	}
	*offset_p = FUNC3(robj);
	FUNC1(gobj);
	return 0;
}