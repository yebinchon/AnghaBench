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
struct TYPE_4__ {void* virtual; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_pages; } ;
struct nouveau_bo {TYPE_2__ dma_buf_vmap; TYPE_1__ bo; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 struct nouveau_bo* FUNC1 (struct drm_gem_object*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

void *FUNC3(struct drm_gem_object *obj)
{
	struct nouveau_bo *nvbo = FUNC1(obj);
	int ret;

	ret = FUNC2(&nvbo->bo, 0, nvbo->bo.num_pages,
			  &nvbo->dma_buf_vmap);
	if (ret)
		return FUNC0(ret);

	return nvbo->dma_buf_vmap.virtual;
}