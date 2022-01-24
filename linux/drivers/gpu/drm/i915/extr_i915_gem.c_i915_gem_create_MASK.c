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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  base; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct drm_i915_gem_object*) ; 
 int FUNC2 (struct drm_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC3 (struct drm_i915_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct drm_file *file,
		struct drm_i915_private *dev_priv,
		u64 *size_p,
		u32 *handle_p)
{
	struct drm_i915_gem_object *obj;
	u32 handle;
	u64 size;
	int ret;

	size = FUNC5(*size_p, PAGE_SIZE);
	if (size == 0)
		return -EINVAL;

	/* Allocate the new object */
	obj = FUNC3(dev_priv, size);
	if (FUNC0(obj))
		return FUNC1(obj);

	ret = FUNC2(file, &obj->base, &handle);
	/* drop reference from allocate - handle holds it now */
	FUNC4(obj);
	if (ret)
		return ret;

	*handle_p = handle;
	*size_p = size;
	return 0;
}