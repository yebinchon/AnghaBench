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
struct lima_vm {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ start; } ;
struct lima_bo_va {scalar_t__ ref_count; int /*<<< orphan*/  list; TYPE_1__ node; } ;
struct lima_bo {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct lima_bo_va*) ; 
 struct lima_bo_va* FUNC2 (struct lima_vm*,struct lima_bo*) ; 
 int /*<<< orphan*/  FUNC3 (struct lima_vm*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct lima_vm *vm, struct lima_bo *bo)
{
	struct lima_bo_va *bo_va;

	FUNC5(&bo->lock);

	bo_va = FUNC2(vm, bo);
	if (--bo_va->ref_count > 0) {
		FUNC6(&bo->lock);
		return;
	}

	FUNC5(&vm->lock);

	FUNC3(vm, bo_va->node.start,
				 bo_va->node.start + bo_va->node.size - 1);

	FUNC0(&bo_va->node);

	FUNC6(&vm->lock);

	FUNC4(&bo_va->list);

	FUNC6(&bo->lock);

	FUNC1(bo_va);
}