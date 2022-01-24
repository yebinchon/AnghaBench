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
struct drm_i915_private {int /*<<< orphan*/  drm; } ;
struct drm_i915_gem_object {int dummy; } ;
typedef  struct drm_i915_gem_object dma_buf ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*) ; 
 void* FUNC3 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*,void*) ; 
 int FUNC5 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC9 (void*,int,int /*<<< orphan*/ ) ; 
 struct drm_i915_gem_object* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 struct drm_i915_gem_object* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(void *arg)
{
	struct drm_i915_private *i915 = arg;
	struct drm_i915_gem_object *obj;
	struct dma_buf *dmabuf;
	void *ptr;
	int err;

	dmabuf = FUNC10(1);
	if (FUNC0(dmabuf))
		return FUNC1(dmabuf);

	ptr = FUNC3(dmabuf);
	if (!ptr) {
		FUNC11("dma_buf_vmap failed\n");
		err = -ENOMEM;
		goto err_dmabuf;
	}

	FUNC9(ptr, 0xc5, PAGE_SIZE);
	FUNC4(dmabuf, ptr);

	obj = FUNC12(FUNC8(&i915->drm, dmabuf));
	if (FUNC0(obj)) {
		FUNC11("i915_gem_prime_import failed with err=%d\n",
		       (int)FUNC1(obj));
		err = FUNC1(obj);
		goto err_dmabuf;
	}

	FUNC2(dmabuf);

	err = FUNC5(obj);
	if (err) {
		FUNC11("i915_gem_object_pin_pages failed with err=%d\n", err);
		goto out_obj;
	}

	err = 0;
	FUNC7(obj);
out_obj:
	FUNC6(obj);
	return err;

err_dmabuf:
	FUNC2(dmabuf);
	return err;
}