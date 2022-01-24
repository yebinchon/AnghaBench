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
struct rockchip_gem_object {TYPE_1__* sgt; } ;
struct rockchip_drm_private {scalar_t__ domain; } ;
struct drm_gem_object {scalar_t__ import_attach; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; struct rockchip_drm_private* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct rockchip_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct rockchip_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct rockchip_gem_object*) ; 
 struct rockchip_gem_object* FUNC5 (struct drm_gem_object*) ; 

void FUNC6(struct drm_gem_object *obj)
{
	struct drm_device *drm = obj->dev;
	struct rockchip_drm_private *private = drm->dev_private;
	struct rockchip_gem_object *rk_obj = FUNC5(obj);

	if (obj->import_attach) {
		if (private->domain) {
			FUNC3(rk_obj);
		} else {
			FUNC0(drm->dev, rk_obj->sgt->sgl,
				     rk_obj->sgt->nents, DMA_BIDIRECTIONAL);
		}
		FUNC1(obj, rk_obj->sgt);
	} else {
		FUNC2(rk_obj);
	}

	FUNC4(rk_obj);
}