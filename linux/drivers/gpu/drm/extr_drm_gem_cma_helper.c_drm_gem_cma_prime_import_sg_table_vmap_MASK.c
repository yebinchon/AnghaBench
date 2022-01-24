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
struct sg_table {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_gem_cma_object {void* vaddr; } ;
struct drm_device {int dummy; } ;
struct dma_buf_attachment {int /*<<< orphan*/  dmabuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_gem_object* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_gem_object*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 struct drm_gem_object* FUNC5 (struct drm_device*,struct dma_buf_attachment*,struct sg_table*) ; 
 struct drm_gem_cma_object* FUNC6 (struct drm_gem_object*) ; 

struct drm_gem_object *
FUNC7(struct drm_device *dev,
				       struct dma_buf_attachment *attach,
				       struct sg_table *sgt)
{
	struct drm_gem_cma_object *cma_obj;
	struct drm_gem_object *obj;
	void *vaddr;

	vaddr = FUNC3(attach->dmabuf);
	if (!vaddr) {
		FUNC0("Failed to vmap PRIME buffer\n");
		return FUNC1(-ENOMEM);
	}

	obj = FUNC5(dev, attach, sgt);
	if (FUNC2(obj)) {
		FUNC4(attach->dmabuf, vaddr);
		return obj;
	}

	cma_obj = FUNC6(obj);
	cma_obj->vaddr = vaddr;

	return obj;
}