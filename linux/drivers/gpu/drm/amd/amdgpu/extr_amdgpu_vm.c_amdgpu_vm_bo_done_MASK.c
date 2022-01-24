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
struct amdgpu_vm_bo_base {TYPE_1__* vm; int /*<<< orphan*/  vm_status; } ;
struct TYPE_2__ {int /*<<< orphan*/  invalidated_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_vm_bo_base *vm_bo)
{
	FUNC1(&vm_bo->vm->invalidated_lock);
	FUNC0(&vm_bo->vm_status);
	FUNC2(&vm_bo->vm->invalidated_lock);
}