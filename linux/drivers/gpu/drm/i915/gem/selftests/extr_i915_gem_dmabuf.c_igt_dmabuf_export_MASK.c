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
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  base; } ;
struct dma_buf {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*) ; 
 struct drm_i915_gem_object* FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*) ; 
 struct drm_i915_gem_object* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static int FUNC7(void *arg)
{
	struct drm_i915_private *i915 = arg;
	struct drm_i915_gem_object *obj;
	struct dma_buf *dmabuf;

	obj = FUNC3(i915, PAGE_SIZE);
	if (FUNC0(obj))
		return FUNC1(obj);

	dmabuf = FUNC5(&obj->base, 0);
	FUNC4(obj);
	if (FUNC0(dmabuf)) {
		FUNC6("i915_gem_prime_export failed with err=%d\n",
		       (int)FUNC1(dmabuf));
		return FUNC1(dmabuf);
	}

	FUNC2(dmabuf);
	return 0;
}