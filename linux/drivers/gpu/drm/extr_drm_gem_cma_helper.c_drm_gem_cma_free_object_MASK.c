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
struct drm_gem_object {TYPE_1__* dev; TYPE_3__* import_attach; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; } ;
struct drm_gem_cma_object {int /*<<< orphan*/  paddr; scalar_t__ vaddr; TYPE_2__ base; int /*<<< orphan*/  sgt; } ;
struct TYPE_6__ {int /*<<< orphan*/  dmabuf; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_cma_object*) ; 
 struct drm_gem_cma_object* FUNC5 (struct drm_gem_object*) ; 

void FUNC6(struct drm_gem_object *gem_obj)
{
	struct drm_gem_cma_object *cma_obj;

	cma_obj = FUNC5(gem_obj);

	if (gem_obj->import_attach) {
		if (cma_obj->vaddr)
			FUNC0(gem_obj->import_attach->dmabuf, cma_obj->vaddr);
		FUNC3(gem_obj, cma_obj->sgt);
	} else if (cma_obj->vaddr) {
		FUNC1(gem_obj->dev->dev, cma_obj->base.size,
			    cma_obj->vaddr, cma_obj->paddr);
	}

	FUNC2(gem_obj);

	FUNC4(cma_obj);
}