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
struct omap_gem_object {scalar_t__ dma_addr_cnt; int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  sgt; scalar_t__ vaddr; int /*<<< orphan*/  dma_addr; struct omap_gem_object* pages; int /*<<< orphan*/  mm_list; } ;
struct omap_drm_private {int /*<<< orphan*/  list_lock; } ;
struct drm_gem_object {scalar_t__ import_attach; int /*<<< orphan*/  size; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; struct omap_drm_private* dev_private; } ;

/* Variables and functions */
 int OMAP_BO_MEM_DMABUF ; 
 int OMAP_BO_MEM_DMA_API ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_gem_object*) ; 
 struct omap_gem_object* FUNC11 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

void FUNC13(struct drm_gem_object *obj)
{
	struct drm_device *dev = obj->dev;
	struct omap_drm_private *priv = dev->dev_private;
	struct omap_gem_object *omap_obj = FUNC11(obj);

	FUNC10(obj);

	FUNC7(&priv->list_lock);
	FUNC5(&omap_obj->mm_list);
	FUNC8(&priv->list_lock);

	/*
	 * We own the sole reference to the object at this point, but to keep
	 * lockdep happy, we must still take the omap_obj_lock to call
	 * omap_gem_detach_pages(). This should hardly make any difference as
	 * there can't be any lock contention.
	 */
	FUNC7(&omap_obj->lock);

	/* The object should not be pinned. */
	FUNC0(omap_obj->dma_addr_cnt > 0);

	if (omap_obj->pages) {
		if (omap_obj->flags & OMAP_BO_MEM_DMABUF)
			FUNC4(omap_obj->pages);
		else
			FUNC9(obj);
	}

	if (omap_obj->flags & OMAP_BO_MEM_DMA_API) {
		FUNC1(dev->dev, obj->size, omap_obj->vaddr,
			    omap_obj->dma_addr);
	} else if (omap_obj->vaddr) {
		FUNC12(omap_obj->vaddr);
	} else if (obj->import_attach) {
		FUNC3(obj, omap_obj->sgt);
	}

	FUNC8(&omap_obj->lock);

	FUNC2(obj);

	FUNC6(&omap_obj->lock);

	FUNC4(omap_obj);
}