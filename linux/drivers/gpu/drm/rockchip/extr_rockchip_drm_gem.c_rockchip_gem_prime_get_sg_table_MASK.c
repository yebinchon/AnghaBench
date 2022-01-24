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
struct rockchip_gem_object {int /*<<< orphan*/  dma_attrs; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  kvaddr; int /*<<< orphan*/  num_pages; scalar_t__ pages; } ;
struct drm_gem_object {int /*<<< orphan*/  size; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOMEM ; 
 struct sg_table* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sg_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sg_table* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sg_table*) ; 
 struct sg_table* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct rockchip_gem_object* FUNC6 (struct drm_gem_object*) ; 

struct sg_table *FUNC7(struct drm_gem_object *obj)
{
	struct rockchip_gem_object *rk_obj = FUNC6(obj);
	struct drm_device *drm = obj->dev;
	struct sg_table *sgt;
	int ret;

	if (rk_obj->pages)
		return FUNC3(rk_obj->pages, rk_obj->num_pages);

	sgt = FUNC5(sizeof(*sgt), GFP_KERNEL);
	if (!sgt)
		return FUNC1(-ENOMEM);

	ret = FUNC2(drm->dev, sgt, rk_obj->kvaddr,
				    rk_obj->dma_addr, obj->size,
				    rk_obj->dma_attrs);
	if (ret) {
		FUNC0("failed to allocate sgt, %d\n", ret);
		FUNC4(sgt);
		return FUNC1(ret);
	}

	return sgt;
}