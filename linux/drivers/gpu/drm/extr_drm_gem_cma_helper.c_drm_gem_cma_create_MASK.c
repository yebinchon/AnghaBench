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
struct drm_gem_cma_object {int /*<<< orphan*/  base; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  paddr; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_gem_cma_object* FUNC0 (int) ; 
 int GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct drm_gem_cma_object*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int __GFP_NOWARN ; 
 struct drm_gem_cma_object* FUNC2 (struct drm_device*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (size_t,int /*<<< orphan*/ ) ; 

struct drm_gem_cma_object *FUNC7(struct drm_device *drm,
					      size_t size)
{
	struct drm_gem_cma_object *cma_obj;
	int ret;

	size = FUNC6(size, PAGE_SIZE);

	cma_obj = FUNC2(drm, size);
	if (FUNC1(cma_obj))
		return cma_obj;

	cma_obj->vaddr = FUNC4(drm->dev, size, &cma_obj->paddr,
				      GFP_KERNEL | __GFP_NOWARN);
	if (!cma_obj->vaddr) {
		FUNC3(drm->dev, "failed to allocate buffer with size %zu\n",
			size);
		ret = -ENOMEM;
		goto error;
	}

	return cma_obj;

error:
	FUNC5(&cma_obj->base);
	return FUNC0(ret);
}