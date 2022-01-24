#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ttm_place {int dummy; } ;
struct ttm_mem_type_manager {int dummy; } ;
struct ttm_mem_reg {scalar_t__ start; } ;
struct ttm_buffer_object {int /*<<< orphan*/  bdev; } ;
struct nouveau_mem {int dummy; } ;
struct nouveau_drm {int /*<<< orphan*/  master; } ;
struct nouveau_bo {int /*<<< orphan*/  comp; int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 struct nouveau_drm* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nouveau_bo* FUNC1 (struct ttm_buffer_object*) ; 
 struct nouveau_mem* FUNC2 (struct ttm_mem_reg*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ttm_mem_reg*) ; 

__attribute__((used)) static int
FUNC4(struct ttm_mem_type_manager *man,
			 struct ttm_buffer_object *bo,
			 const struct ttm_place *place,
			 struct ttm_mem_reg *reg)
{
	struct nouveau_bo *nvbo = FUNC1(bo);
	struct nouveau_drm *drm = FUNC0(bo->bdev);
	struct nouveau_mem *mem;
	int ret;

	ret = FUNC3(&drm->master, nvbo->kind, nvbo->comp, reg);
	mem = FUNC2(reg);
	if (ret)
		return ret;

	reg->start = 0;
	return 0;
}