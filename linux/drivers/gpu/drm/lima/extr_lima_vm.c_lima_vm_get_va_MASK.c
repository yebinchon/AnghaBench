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
typedef  int /*<<< orphan*/  u32 ;
struct lima_vm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct lima_bo_va {TYPE_1__ node; } ;
struct lima_bo {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct lima_bo_va* FUNC0 (struct lima_vm*,struct lima_bo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

u32 FUNC3(struct lima_vm *vm, struct lima_bo *bo)
{
	struct lima_bo_va *bo_va;
	u32 ret;

	FUNC1(&bo->lock);

	bo_va = FUNC0(vm, bo);
	ret = bo_va->node.start;

	FUNC2(&bo->lock);

	return ret;
}