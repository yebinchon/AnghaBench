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
struct mtk_drm_private {int /*<<< orphan*/  dma_dev; } ;
struct drm_gem_object {int /*<<< orphan*/  size; } ;
struct mtk_drm_gem_obj {int /*<<< orphan*/  dma_addr; scalar_t__ cookie; scalar_t__ kvaddr; int /*<<< orphan*/  dma_attrs; struct drm_gem_object base; } ;
struct drm_device {struct mtk_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_NO_KERNEL_MAPPING ; 
 int /*<<< orphan*/  DMA_ATTR_WRITE_COMBINE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct mtk_drm_gem_obj* FUNC2 (struct mtk_drm_gem_obj*) ; 
 struct mtk_drm_gem_obj* FUNC3 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC4 (struct mtk_drm_gem_obj*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_drm_gem_obj*) ; 
 struct mtk_drm_gem_obj* FUNC8 (struct drm_device*,size_t) ; 

struct mtk_drm_gem_obj *FUNC9(struct drm_device *dev,
					   size_t size, bool alloc_kmap)
{
	struct mtk_drm_private *priv = dev->dev_private;
	struct mtk_drm_gem_obj *mtk_gem;
	struct drm_gem_object *obj;
	int ret;

	mtk_gem = FUNC8(dev, size);
	if (FUNC4(mtk_gem))
		return FUNC2(mtk_gem);

	obj = &mtk_gem->base;

	mtk_gem->dma_attrs = DMA_ATTR_WRITE_COMBINE;

	if (!alloc_kmap)
		mtk_gem->dma_attrs |= DMA_ATTR_NO_KERNEL_MAPPING;

	mtk_gem->cookie = FUNC5(priv->dma_dev, obj->size,
					  &mtk_gem->dma_addr, GFP_KERNEL,
					  mtk_gem->dma_attrs);
	if (!mtk_gem->cookie) {
		FUNC1("failed to allocate %zx byte dma buffer", obj->size);
		ret = -ENOMEM;
		goto err_gem_free;
	}

	if (alloc_kmap)
		mtk_gem->kvaddr = mtk_gem->cookie;

	FUNC0("cookie = %p dma_addr = %pad size = %zu\n",
			 mtk_gem->cookie, &mtk_gem->dma_addr,
			 size);

	return mtk_gem;

err_gem_free:
	FUNC6(obj);
	FUNC7(mtk_gem);
	return FUNC3(ret);
}