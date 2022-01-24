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
struct rockchip_gem_object {int dma_attrs; void* kvaddr; int /*<<< orphan*/  num_pages; scalar_t__ pages; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int DMA_ATTR_NO_KERNEL_MAPPING ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int /*<<< orphan*/  VM_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rockchip_gem_object* FUNC1 (struct drm_gem_object*) ; 
 void* FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *FUNC3(struct drm_gem_object *obj)
{
	struct rockchip_gem_object *rk_obj = FUNC1(obj);

	if (rk_obj->pages)
		return FUNC2(rk_obj->pages, rk_obj->num_pages, VM_MAP,
			    FUNC0(PAGE_KERNEL));

	if (rk_obj->dma_attrs & DMA_ATTR_NO_KERNEL_MAPPING)
		return NULL;

	return rk_obj->kvaddr;
}