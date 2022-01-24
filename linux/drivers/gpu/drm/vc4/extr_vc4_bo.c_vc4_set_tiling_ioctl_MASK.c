#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vc4_bo {int t_format; } ;
struct drm_vc4_set_tiling {scalar_t__ flags; int modifier; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
#define  DRM_FORMAT_MOD_BROADCOM_VC4_T_TILED 129 
#define  DRM_FORMAT_MOD_NONE 128 
 int EINVAL ; 
 int ENOENT ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 struct vc4_bo* FUNC3 (struct drm_gem_object*) ; 

int FUNC4(struct drm_device *dev, void *data,
			 struct drm_file *file_priv)
{
	struct drm_vc4_set_tiling *args = data;
	struct drm_gem_object *gem_obj;
	struct vc4_bo *bo;
	bool t_format;

	if (args->flags != 0)
		return -EINVAL;

	switch (args->modifier) {
	case DRM_FORMAT_MOD_NONE:
		t_format = false;
		break;
	case DRM_FORMAT_MOD_BROADCOM_VC4_T_TILED:
		t_format = true;
		break;
	default:
		return -EINVAL;
	}

	gem_obj = FUNC1(file_priv, args->handle);
	if (!gem_obj) {
		FUNC0("Failed to look up GEM BO %d\n", args->handle);
		return -ENOENT;
	}
	bo = FUNC3(gem_obj);
	bo->t_format = t_format;

	FUNC2(gem_obj);

	return 0;
}