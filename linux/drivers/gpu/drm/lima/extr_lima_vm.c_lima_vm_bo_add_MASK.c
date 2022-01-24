#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lima_vm {int /*<<< orphan*/  lock; int /*<<< orphan*/  mm; } ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ start; } ;
struct lima_bo_va {int ref_count; TYPE_2__ node; int /*<<< orphan*/  list; struct lima_vm* vm; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct lima_bo {int /*<<< orphan*/  lock; int /*<<< orphan*/  va; int /*<<< orphan*/  pages_dma_addr; TYPE_1__ gem; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct lima_bo_va*) ; 
 struct lima_bo_va* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct lima_bo_va* FUNC4 (struct lima_vm*,struct lima_bo*) ; 
 int FUNC5 (struct lima_vm*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct lima_vm *vm, struct lima_bo *bo, bool create)
{
	struct lima_bo_va *bo_va;
	int err;

	FUNC7(&bo->lock);

	bo_va = FUNC4(vm, bo);
	if (bo_va) {
		bo_va->ref_count++;
		FUNC8(&bo->lock);
		return 0;
	}

	/* should not create new bo_va if not asked by caller */
	if (!create) {
		FUNC8(&bo->lock);
		return -ENOENT;
	}

	bo_va = FUNC3(sizeof(*bo_va), GFP_KERNEL);
	if (!bo_va) {
		err = -ENOMEM;
		goto err_out0;
	}

	bo_va->vm = vm;
	bo_va->ref_count = 1;

	FUNC7(&vm->lock);

	err = FUNC0(&vm->mm, &bo_va->node, bo->gem.size);
	if (err)
		goto err_out1;

	err = FUNC5(vm, bo->pages_dma_addr, bo_va->node.start,
				     bo_va->node.start + bo_va->node.size - 1);
	if (err)
		goto err_out2;

	FUNC8(&vm->lock);

	FUNC6(&bo_va->list, &bo->va);

	FUNC8(&bo->lock);
	return 0;

err_out2:
	FUNC1(&bo_va->node);
err_out1:
	FUNC8(&vm->lock);
	FUNC2(bo_va);
err_out0:
	FUNC8(&bo->lock);
	return err;
}