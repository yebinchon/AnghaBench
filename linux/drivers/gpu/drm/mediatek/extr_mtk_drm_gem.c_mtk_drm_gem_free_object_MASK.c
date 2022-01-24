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
struct mtk_drm_private {int /*<<< orphan*/  dma_dev; } ;
struct mtk_drm_gem_obj {int /*<<< orphan*/  dma_attrs; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  cookie; scalar_t__ sg; } ;
struct drm_gem_object {int /*<<< orphan*/  size; TYPE_1__* dev; } ;
struct TYPE_2__ {struct mtk_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_drm_gem_obj*) ; 
 struct mtk_drm_gem_obj* FUNC4 (struct drm_gem_object*) ; 

void FUNC5(struct drm_gem_object *obj)
{
	struct mtk_drm_gem_obj *mtk_gem = FUNC4(obj);
	struct mtk_drm_private *priv = obj->dev->dev_private;

	if (mtk_gem->sg)
		FUNC2(obj, mtk_gem->sg);
	else
		FUNC0(priv->dma_dev, obj->size, mtk_gem->cookie,
			       mtk_gem->dma_addr, mtk_gem->dma_attrs);

	/* release file pointer to gem object. */
	FUNC1(obj);

	FUNC3(mtk_gem);
}