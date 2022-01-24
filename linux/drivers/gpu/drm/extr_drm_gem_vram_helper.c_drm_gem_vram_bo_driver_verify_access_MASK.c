#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ttm_buffer_object {int dummy; } ;
struct file {int /*<<< orphan*/  private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  vma_node; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct drm_gem_vram_object {TYPE_2__ bo; } ;

/* Variables and functions */
 struct drm_gem_vram_object* FUNC0 (struct ttm_buffer_object*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct ttm_buffer_object *bo,
					 struct file *filp)
{
	struct drm_gem_vram_object *gbo = FUNC0(bo);

	return FUNC1(&gbo->bo.base.vma_node,
					  filp->private_data);
}