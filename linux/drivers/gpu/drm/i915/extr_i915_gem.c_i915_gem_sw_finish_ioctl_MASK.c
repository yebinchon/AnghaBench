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
struct drm_i915_gem_sw_finish {int /*<<< orphan*/  handle; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_gem_object*) ; 
 struct drm_i915_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*) ; 

int
FUNC3(struct drm_device *dev, void *data,
			 struct drm_file *file)
{
	struct drm_i915_gem_sw_finish *args = data;
	struct drm_i915_gem_object *obj;

	obj = FUNC1(file, args->handle);
	if (!obj)
		return -ENOENT;

	/*
	 * Proxy objects are barred from CPU access, so there is no
	 * need to ban sw_finish as it is a nop.
	 */

	/* Pinned buffers may be scanout, so flush the cache */
	FUNC0(obj);
	FUNC2(obj);

	return 0;
}