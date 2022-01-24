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
struct drm_gem_object {int dummy; } ;
struct rockchip_gem_object {struct drm_gem_object base; } ;
struct rockchip_drm_private {scalar_t__ domain; } ;
struct drm_device {struct rockchip_drm_private* dev_private; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct drm_gem_object* FUNC1 (struct rockchip_gem_object*) ; 
 struct drm_gem_object* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct rockchip_gem_object*) ; 
 struct rockchip_gem_object* FUNC4 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_device*,struct dma_buf_attachment*,struct sg_table*,struct rockchip_gem_object*) ; 
 int FUNC6 (struct drm_device*,struct dma_buf_attachment*,struct sg_table*,struct rockchip_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct rockchip_gem_object*) ; 

struct drm_gem_object *
FUNC8(struct drm_device *drm,
				   struct dma_buf_attachment *attach,
				   struct sg_table *sg)
{
	struct rockchip_drm_private *private = drm->dev_private;
	struct rockchip_gem_object *rk_obj;
	int ret;

	rk_obj = FUNC4(drm, attach->dmabuf->size);
	if (FUNC3(rk_obj))
		return FUNC1(rk_obj);

	if (private->domain)
		ret = FUNC6(drm, attach, sg, rk_obj);
	else
		ret = FUNC5(drm, attach, sg, rk_obj);

	if (ret < 0) {
		FUNC0("failed to import sg table: %d\n", ret);
		goto err_free_rk_obj;
	}

	return &rk_obj->base;

err_free_rk_obj:
	FUNC7(rk_obj);
	return FUNC2(ret);
}