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
struct intel_vgpu_fb_info {int drm_format_mod; unsigned int stride; int /*<<< orphan*/  size; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {unsigned int tiling_and_stride; scalar_t__ write_domain; int /*<<< orphan*/  read_domains; int /*<<< orphan*/  base; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
#define  DRM_FORMAT_MOD_LINEAR 131 
#define  I915_FORMAT_MOD_X_TILED 130 
#define  I915_FORMAT_MOD_Y_TILED 129 
#define  I915_FORMAT_MOD_Yf_TILED 128 
 int /*<<< orphan*/  I915_GEM_DOMAIN_GTT ; 
 unsigned int I915_TILING_NONE ; 
 void* I915_TILING_X ; 
 unsigned int I915_TILING_Y ; 
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct drm_i915_gem_object* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intel_vgpu_gem_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC6 (struct drm_device*) ; 

__attribute__((used)) static struct drm_i915_gem_object *FUNC7(struct drm_device *dev,
		struct intel_vgpu_fb_info *info)
{
	struct drm_i915_private *dev_priv = FUNC6(dev);
	struct drm_i915_gem_object *obj;

	obj = FUNC3();
	if (obj == NULL)
		return NULL;

	FUNC1(dev, &obj->base,
		FUNC5(info->size, PAGE_SIZE));
	FUNC4(obj, &intel_vgpu_gem_ops);

	obj->read_domains = I915_GEM_DOMAIN_GTT;
	obj->write_domain = 0;
	if (FUNC0(dev_priv) >= 9) {
		unsigned int tiling_mode = 0;
		unsigned int stride = 0;

		switch (info->drm_format_mod) {
		case DRM_FORMAT_MOD_LINEAR:
			tiling_mode = I915_TILING_NONE;
			break;
		case I915_FORMAT_MOD_X_TILED:
			tiling_mode = I915_TILING_X;
			stride = info->stride;
			break;
		case I915_FORMAT_MOD_Y_TILED:
		case I915_FORMAT_MOD_Yf_TILED:
			tiling_mode = I915_TILING_Y;
			stride = info->stride;
			break;
		default:
			FUNC2("invalid drm_format_mod %llx for tiling\n",
				     info->drm_format_mod);
		}
		obj->tiling_and_stride = tiling_mode | stride;
	} else {
		obj->tiling_and_stride = info->drm_format_mod ?
					I915_TILING_X : 0;
	}

	return obj;
}