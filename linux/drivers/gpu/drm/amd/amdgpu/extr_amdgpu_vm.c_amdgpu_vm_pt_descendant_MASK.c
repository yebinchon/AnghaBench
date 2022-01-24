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
struct amdgpu_vm_pt_cursor {unsigned int pfn; TYPE_1__* entry; TYPE_1__* parent; int /*<<< orphan*/  level; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  bo; } ;
struct TYPE_3__ {struct TYPE_3__* entries; TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct amdgpu_device *adev,
				    struct amdgpu_vm_pt_cursor *cursor)
{
	unsigned mask, shift, idx;

	if (!cursor->entry->entries)
		return false;

	FUNC0(!cursor->entry->base.bo);
	mask = FUNC1(adev, cursor->level);
	shift = FUNC2(adev, cursor->level);

	++cursor->level;
	idx = (cursor->pfn >> shift) & mask;
	cursor->parent = cursor->entry;
	cursor->entry = &cursor->entry->entries[idx];
	return true;
}