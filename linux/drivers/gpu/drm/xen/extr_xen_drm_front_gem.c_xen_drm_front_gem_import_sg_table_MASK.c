#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_gem_object {int dummy; } ;
struct xen_gem_object {struct drm_gem_object base; int /*<<< orphan*/  pages; int /*<<< orphan*/  num_pages; struct sg_table* sgt_imported; } ;
struct xen_drm_front_drm_info {int /*<<< orphan*/  front_info; } ;
struct sg_table {int /*<<< orphan*/  nents; } ;
struct drm_device {struct xen_drm_front_drm_info* dev_private; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
struct TYPE_2__ {size_t size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,int /*<<< orphan*/ ) ; 
 struct drm_gem_object* FUNC1 (struct xen_gem_object*) ; 
 struct drm_gem_object* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct xen_gem_object*) ; 
 int FUNC4 (struct sg_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xen_gem_object*,size_t) ; 
 struct xen_gem_object* FUNC6 (struct drm_device*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_gem_object*) ; 

struct drm_gem_object *
FUNC9(struct drm_device *dev,
				  struct dma_buf_attachment *attach,
				  struct sg_table *sgt)
{
	struct xen_drm_front_drm_info *drm_info = dev->dev_private;
	struct xen_gem_object *xen_obj;
	size_t size;
	int ret;

	size = attach->dmabuf->size;
	xen_obj = FUNC6(dev, size);
	if (FUNC3(xen_obj))
		return FUNC1(xen_obj);

	ret = FUNC5(xen_obj, size);
	if (ret < 0)
		return FUNC2(ret);

	xen_obj->sgt_imported = sgt;

	ret = FUNC4(sgt, xen_obj->pages,
					       NULL, xen_obj->num_pages);
	if (ret < 0)
		return FUNC2(ret);

	ret = FUNC7(drm_info->front_info,
					FUNC8(&xen_obj->base),
					0, 0, 0, size, xen_obj->pages);
	if (ret < 0)
		return FUNC2(ret);

	FUNC0("Imported buffer of size %zu with nents %u\n",
		  size, sgt->nents);

	return &xen_obj->base;
}