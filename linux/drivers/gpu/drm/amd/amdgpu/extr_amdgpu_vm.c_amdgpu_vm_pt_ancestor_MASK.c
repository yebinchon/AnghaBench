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
struct amdgpu_vm_pt_cursor {scalar_t__ parent; scalar_t__ entry; int /*<<< orphan*/  level; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 

__attribute__((used)) static bool FUNC1(struct amdgpu_vm_pt_cursor *cursor)
{
	if (!cursor->parent)
		return false;

	--cursor->level;
	cursor->entry = cursor->parent;
	cursor->parent = FUNC0(cursor->parent);
	return true;
}