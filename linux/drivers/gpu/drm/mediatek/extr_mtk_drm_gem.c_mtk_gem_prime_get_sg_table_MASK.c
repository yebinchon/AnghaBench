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
struct mtk_drm_private {int /*<<< orphan*/  dma_dev; } ;
struct mtk_drm_gem_obj {int /*<<< orphan*/  dma_attrs; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  cookie; } ;
struct drm_gem_object {int /*<<< orphan*/  size; TYPE_1__* dev; } ;
struct TYPE_2__ {struct mtk_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOMEM ; 
 struct sg_table* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sg_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sg_table*) ; 
 struct sg_table* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct mtk_drm_gem_obj* FUNC5 (struct drm_gem_object*) ; 

struct sg_table *FUNC6(struct drm_gem_object *obj)
{
	struct mtk_drm_gem_obj *mtk_gem = FUNC5(obj);
	struct mtk_drm_private *priv = obj->dev->dev_private;
	struct sg_table *sgt;
	int ret;

	sgt = FUNC4(sizeof(*sgt), GFP_KERNEL);
	if (!sgt)
		return FUNC1(-ENOMEM);

	ret = FUNC2(priv->dma_dev, sgt, mtk_gem->cookie,
				    mtk_gem->dma_addr, obj->size,
				    mtk_gem->dma_attrs);
	if (ret) {
		FUNC0("failed to allocate sgt, %d\n", ret);
		FUNC3(sgt);
		return FUNC1(ret);
	}

	return sgt;
}