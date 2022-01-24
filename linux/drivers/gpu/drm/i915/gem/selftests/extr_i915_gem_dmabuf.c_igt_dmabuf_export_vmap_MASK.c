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
struct drm_i915_gem_object {int /*<<< orphan*/  size; int /*<<< orphan*/  base; } ;
struct dma_buf {int /*<<< orphan*/  size; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*) ; 
 void* FUNC3 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*,void*) ; 
 struct drm_i915_gem_object* FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 struct drm_i915_gem_object* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static int FUNC11(void *arg)
{
	struct drm_i915_private *i915 = arg;
	struct drm_i915_gem_object *obj;
	struct dma_buf *dmabuf;
	void *ptr;
	int err;

	obj = FUNC5(i915, PAGE_SIZE);
	if (FUNC0(obj))
		return FUNC1(obj);

	dmabuf = FUNC7(&obj->base, 0);
	if (FUNC0(dmabuf)) {
		FUNC10("i915_gem_prime_export failed with err=%d\n",
		       (int)FUNC1(dmabuf));
		err = FUNC1(dmabuf);
		goto err_obj;
	}
	FUNC6(obj);

	ptr = FUNC3(dmabuf);
	if (!ptr) {
		FUNC10("dma_buf_vmap failed\n");
		err = -ENOMEM;
		goto out;
	}

	if (FUNC8(ptr, 0, dmabuf->size)) {
		FUNC10("Exported object not initialiased to zero!\n");
		err = -EINVAL;
		goto out;
	}

	FUNC9(ptr, 0xc5, dmabuf->size);

	err = 0;
	FUNC4(dmabuf, ptr);
out:
	FUNC2(dmabuf);
	return err;

err_obj:
	FUNC6(obj);
	return err;
}