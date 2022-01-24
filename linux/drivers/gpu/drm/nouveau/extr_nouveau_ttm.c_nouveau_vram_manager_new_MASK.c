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
struct ttm_mem_reg {int /*<<< orphan*/ * mm_node; } ;
struct ttm_buffer_object {int /*<<< orphan*/  bdev; } ;
struct nouveau_mem {int dummy; } ;
struct TYPE_4__ {scalar_t__ ram_size; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ device; } ;
struct nouveau_drm {int /*<<< orphan*/  master; TYPE_3__ client; } ;
struct nouveau_bo {int /*<<< orphan*/  page; int /*<<< orphan*/  contig; int /*<<< orphan*/  comp; int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 struct nouveau_drm* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nouveau_bo* FUNC1 (struct ttm_buffer_object*) ; 
 struct nouveau_mem* FUNC2 (struct ttm_mem_reg*) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_mem_reg*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ttm_mem_reg*) ; 
 int FUNC5 (struct ttm_mem_reg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

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

	if (drm->client.device.info.ram_size == 0)
		return -ENOMEM;

	ret = FUNC4(&drm->master, nvbo->kind, nvbo->comp, reg);
	mem = FUNC2(reg);
	if (ret)
		return ret;

	ret = FUNC5(reg, nvbo->contig, nvbo->page);
	if (ret) {
		FUNC3(reg);
		if (ret == -ENOSPC) {
			reg->mm_node = NULL;
			return 0;
		}
		return ret;
	}

	return 0;
}