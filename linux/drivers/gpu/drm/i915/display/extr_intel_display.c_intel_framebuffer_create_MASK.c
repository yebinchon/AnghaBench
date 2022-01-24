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
struct drm_framebuffer {int dummy; } ;
struct intel_framebuffer {struct drm_framebuffer base; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_framebuffer* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct intel_framebuffer*,struct drm_i915_gem_object*,struct drm_mode_fb_cmd2*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_framebuffer*) ; 
 struct intel_framebuffer* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct drm_framebuffer *
FUNC4(struct drm_i915_gem_object *obj,
			 struct drm_mode_fb_cmd2 *mode_cmd)
{
	struct intel_framebuffer *intel_fb;
	int ret;

	intel_fb = FUNC3(sizeof(*intel_fb), GFP_KERNEL);
	if (!intel_fb)
		return FUNC0(-ENOMEM);

	ret = FUNC1(intel_fb, obj, mode_cmd);
	if (ret)
		goto err;

	return &intel_fb->base;

err:
	FUNC2(intel_fb);
	return FUNC0(ret);
}