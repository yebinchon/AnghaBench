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
struct vm_area_struct {int /*<<< orphan*/  vm_flags; } ;
struct mtk_drm_private {int /*<<< orphan*/  dma_dev; } ;
struct mtk_drm_gem_obj {int /*<<< orphan*/  dma_attrs; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  cookie; } ;
struct drm_gem_object {int /*<<< orphan*/  size; TYPE_1__* dev; } ;
struct TYPE_2__ {struct mtk_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_PFNMAP ; 
 int FUNC0 (int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*) ; 
 struct mtk_drm_gem_obj* FUNC2 (struct drm_gem_object*) ; 

__attribute__((used)) static int FUNC3(struct drm_gem_object *obj,
				   struct vm_area_struct *vma)

{
	int ret;
	struct mtk_drm_gem_obj *mtk_gem = FUNC2(obj);
	struct mtk_drm_private *priv = obj->dev->dev_private;

	/*
	 * dma_alloc_attrs() allocated a struct page table for mtk_gem, so clear
	 * VM_PFNMAP flag that was set by drm_gem_mmap_obj()/drm_gem_mmap().
	 */
	vma->vm_flags &= ~VM_PFNMAP;

	ret = FUNC0(priv->dma_dev, vma, mtk_gem->cookie,
			     mtk_gem->dma_addr, obj->size, mtk_gem->dma_attrs);
	if (ret)
		FUNC1(vma);

	return ret;
}