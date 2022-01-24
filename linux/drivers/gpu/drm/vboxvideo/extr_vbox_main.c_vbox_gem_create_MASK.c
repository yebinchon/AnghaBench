#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_6__ {TYPE_1__* vram_mm; } ;
struct vbox_private {TYPE_3__ ddev; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_5__ {struct drm_gem_object base; } ;
struct drm_gem_vram_object {TYPE_2__ bo; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC1 (struct drm_gem_vram_object*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC2 (struct drm_gem_vram_object*) ; 
 struct drm_gem_vram_object* FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC5(struct vbox_private *vbox,
		    u32 size, bool iskernel, struct drm_gem_object **obj)
{
	struct drm_gem_vram_object *gbo;
	int ret;

	*obj = NULL;

	size = FUNC4(size, PAGE_SIZE);
	if (size == 0)
		return -EINVAL;

	gbo = FUNC3(&vbox->ddev, &vbox->ddev.vram_mm->bdev,
				  size, 0, false);
	if (FUNC1(gbo)) {
		ret = FUNC2(gbo);
		if (ret != -ERESTARTSYS)
			FUNC0("failed to allocate GEM object\n");
		return ret;
	}

	*obj = &gbo->bo.base;

	return 0;
}