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
struct TYPE_3__ {TYPE_2__* bo; int /*<<< orphan*/  vm_status; } ;
struct amdgpu_vm_pt {int /*<<< orphan*/ * entries; TYPE_1__ base; } ;
struct TYPE_4__ {struct TYPE_4__* shadow; int /*<<< orphan*/ * vm_bo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_vm_pt *entry)
{
	if (entry->base.bo) {
		entry->base.bo->vm_bo = NULL;
		FUNC2(&entry->base.vm_status);
		FUNC0(&entry->base.bo->shadow);
		FUNC0(&entry->base.bo);
	}
	FUNC1(entry->entries);
	entry->entries = NULL;
}