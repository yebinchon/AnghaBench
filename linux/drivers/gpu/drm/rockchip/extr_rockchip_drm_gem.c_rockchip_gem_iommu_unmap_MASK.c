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
struct TYPE_2__ {struct drm_device* dev; } ;
struct rockchip_gem_object {int /*<<< orphan*/  mm; int /*<<< orphan*/  size; int /*<<< orphan*/  dma_addr; TYPE_1__ base; } ;
struct rockchip_drm_private {int /*<<< orphan*/  mm_lock; int /*<<< orphan*/  domain; } ;
struct drm_device {struct rockchip_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct rockchip_gem_object *rk_obj)
{
	struct drm_device *drm = rk_obj->base.dev;
	struct rockchip_drm_private *private = drm->dev_private;

	FUNC1(private->domain, rk_obj->dma_addr, rk_obj->size);

	FUNC2(&private->mm_lock);

	FUNC0(&rk_obj->mm);

	FUNC3(&private->mm_lock);

	return 0;
}