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
struct TYPE_2__ {int /*<<< orphan*/  ttm; } ;
struct radeon_bo {int initial_domain; TYPE_1__ tbo; } ;
struct drm_radeon_gem_op {int op; int value; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EPERM ; 
 int RADEON_GEM_DOMAIN_CPU ; 
 int RADEON_GEM_DOMAIN_GTT ; 
 int RADEON_GEM_DOMAIN_VRAM ; 
#define  RADEON_GEM_OP_GET_INITIAL_DOMAIN 129 
#define  RADEON_GEM_OP_SET_INITIAL_DOMAIN 128 
 struct drm_gem_object* FUNC0 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 struct radeon_bo* FUNC2 (struct drm_gem_object*) ; 
 int FUNC3 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_bo*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct drm_device *dev, void *data,
			struct drm_file *filp)
{
	struct drm_radeon_gem_op *args = data;
	struct drm_gem_object *gobj;
	struct radeon_bo *robj;
	int r;

	gobj = FUNC0(filp, args->handle);
	if (gobj == NULL) {
		return -ENOENT;
	}
	robj = FUNC2(gobj);

	r = -EPERM;
	if (FUNC5(robj->tbo.ttm))
		goto out;

	r = FUNC3(robj, false);
	if (FUNC6(r))
		goto out;

	switch (args->op) {
	case RADEON_GEM_OP_GET_INITIAL_DOMAIN:
		args->value = robj->initial_domain;
		break;
	case RADEON_GEM_OP_SET_INITIAL_DOMAIN:
		robj->initial_domain = args->value & (RADEON_GEM_DOMAIN_VRAM |
						      RADEON_GEM_DOMAIN_GTT |
						      RADEON_GEM_DOMAIN_CPU);
		break;
	default:
		r = -EINVAL;
	}

	FUNC4(robj);
out:
	FUNC1(gobj);
	return r;
}