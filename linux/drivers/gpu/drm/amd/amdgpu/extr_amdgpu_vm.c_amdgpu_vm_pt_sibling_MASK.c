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
struct amdgpu_vm_pt_cursor {unsigned long long pfn; int /*<<< orphan*/ * entry; TYPE_1__* parent; scalar_t__ level; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * entries; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct amdgpu_device*,scalar_t__) ; 
 unsigned int FUNC1 (struct amdgpu_device*,scalar_t__) ; 

__attribute__((used)) static bool FUNC2(struct amdgpu_device *adev,
				 struct amdgpu_vm_pt_cursor *cursor)
{
	unsigned shift, num_entries;

	/* Root doesn't have a sibling */
	if (!cursor->parent)
		return false;

	/* Go to our parents and see if we got a sibling */
	shift = FUNC0(adev, cursor->level - 1);
	num_entries = FUNC1(adev, cursor->level - 1);

	if (cursor->entry == &cursor->parent->entries[num_entries - 1])
		return false;

	cursor->pfn += 1ULL << shift;
	cursor->pfn &= ~((1ULL << shift) - 1);
	++cursor->entry;
	return true;
}