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
struct sg_table {int dummy; } ;
struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_vgem_gem_object {struct drm_gem_object base; int /*<<< orphan*/  pages; struct sg_table* table; int /*<<< orphan*/  pages_pin_count; } ;
struct drm_device {int dummy; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_gem_object* FUNC0 (struct drm_vgem_gem_object*) ; 
 struct drm_gem_object* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct drm_vgem_gem_object*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 struct drm_vgem_gem_object* FUNC4 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_vgem_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct sg_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_gem_object *FUNC8(struct drm_device *dev,
			struct dma_buf_attachment *attach, struct sg_table *sg)
{
	struct drm_vgem_gem_object *obj;
	int npages;

	obj = FUNC4(dev, attach->dmabuf->size);
	if (FUNC2(obj))
		return FUNC0(obj);

	npages = FUNC3(attach->dmabuf->size) / PAGE_SIZE;

	obj->table = sg;
	obj->pages = FUNC7(npages, sizeof(struct page *), GFP_KERNEL);
	if (!obj->pages) {
		FUNC5(obj);
		return FUNC1(-ENOMEM);
	}

	obj->pages_pin_count++; /* perma-pinned */
	FUNC6(obj->table, obj->pages, NULL,
					npages);
	return &obj->base;
}