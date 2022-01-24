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
struct ttm_place {int dummy; } ;
struct ttm_mem_type_manager {int dummy; } ;
struct ttm_mem_reg {int num_pages; int start; int /*<<< orphan*/ * mm_node; } ;
struct ttm_buffer_object {int /*<<< orphan*/  bdev; } ;
struct nouveau_mem {TYPE_3__* vma; TYPE_2__* cli; } ;
struct nouveau_drm {int /*<<< orphan*/  master; } ;
struct nouveau_bo {int /*<<< orphan*/  comp; int /*<<< orphan*/  kind; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  vmm; } ;
struct TYPE_5__ {TYPE_1__ vmm; } ;

/* Variables and functions */
 int ENOSPC ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PTES ; 
 struct nouveau_drm* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nouveau_bo* FUNC1 (struct ttm_buffer_object*) ; 
 struct nouveau_mem* FUNC2 (struct ttm_mem_reg*) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_mem_reg*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ttm_mem_reg*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,TYPE_3__*) ; 

__attribute__((used)) static int
FUNC6(struct ttm_mem_type_manager *man,
		      struct ttm_buffer_object *bo,
		      const struct ttm_place *place,
		      struct ttm_mem_reg *reg)
{
	struct nouveau_bo *nvbo = FUNC1(bo);
	struct nouveau_drm *drm = FUNC0(bo->bdev);
	struct nouveau_mem *mem;
	int ret;

	ret = FUNC4(&drm->master, nvbo->kind, nvbo->comp, reg);
	mem = FUNC2(reg);
	if (ret)
		return ret;

	ret = FUNC5(&mem->cli->vmm.vmm, PTES, false, 12, 0,
			   reg->num_pages << PAGE_SHIFT, &mem->vma[0]);
	if (ret) {
		FUNC3(reg);
		if (ret == -ENOSPC) {
			reg->mm_node = NULL;
			return 0;
		}
		return ret;
	}

	reg->start = mem->vma[0].addr >> PAGE_SHIFT;
	return 0;
}