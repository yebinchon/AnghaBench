#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct radeon_vm {struct radeon_bo_va* ib_bo_va; } ;
struct TYPE_9__ {TYPE_2__* bo; } ;
struct radeon_device {int /*<<< orphan*/  dev; TYPE_3__ ring_tmp_bo; } ;
struct TYPE_12__ {int /*<<< orphan*/  sync; } ;
struct radeon_cs_parser {int nrelocs; TYPE_6__ ib; TYPE_4__* relocs; struct radeon_device* rdev; } ;
struct radeon_bo_va {int /*<<< orphan*/  last_pt_update; } ;
struct TYPE_11__ {int /*<<< orphan*/  mem; } ;
struct radeon_bo {TYPE_5__ tbo; } ;
struct TYPE_10__ {struct radeon_bo* robj; } ;
struct TYPE_7__ {int /*<<< orphan*/  mem; } ;
struct TYPE_8__ {TYPE_1__ tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct radeon_bo*,struct radeon_vm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct radeon_bo_va* FUNC3 (struct radeon_vm*,struct radeon_bo*) ; 
 int FUNC4 (struct radeon_device*,struct radeon_bo_va*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct radeon_device*,struct radeon_vm*) ; 
 int FUNC6 (struct radeon_device*,struct radeon_vm*) ; 
 int FUNC7 (struct radeon_device*,struct radeon_vm*) ; 

__attribute__((used)) static int FUNC8(struct radeon_cs_parser *p,
				   struct radeon_vm *vm)
{
	struct radeon_device *rdev = p->rdev;
	struct radeon_bo_va *bo_va;
	int i, r;

	r = FUNC7(rdev, vm);
	if (r)
		return r;

	r = FUNC5(rdev, vm);
	if (r)
		return r;

	if (vm->ib_bo_va == NULL) {
		FUNC0("Tmp BO not in VM!\n");
		return -EINVAL;
	}

	r = FUNC4(rdev, vm->ib_bo_va,
				&rdev->ring_tmp_bo.bo->tbo.mem);
	if (r)
		return r;

	for (i = 0; i < p->nrelocs; i++) {
		struct radeon_bo *bo;

		bo = p->relocs[i].robj;
		bo_va = FUNC3(vm, bo);
		if (bo_va == NULL) {
			FUNC1(rdev->dev, "bo %p not in vm %p\n", bo, vm);
			return -EINVAL;
		}

		r = FUNC4(rdev, bo_va, &bo->tbo.mem);
		if (r)
			return r;

		FUNC2(&p->ib.sync, bo_va->last_pt_update);
	}

	return FUNC6(rdev, vm);
}