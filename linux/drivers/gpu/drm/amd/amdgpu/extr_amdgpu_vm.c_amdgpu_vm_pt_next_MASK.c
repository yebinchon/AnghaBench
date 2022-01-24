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
struct amdgpu_vm_pt_cursor {long long pfn; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_vm_pt_cursor*) ; 
 scalar_t__ FUNC1 (struct amdgpu_device*,struct amdgpu_vm_pt_cursor*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,struct amdgpu_vm_pt_cursor*) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev,
			      struct amdgpu_vm_pt_cursor *cursor)
{
	/* First try a newborn child */
	if (FUNC1(adev, cursor))
		return;

	/* If that didn't worked try to find a sibling */
	while (!FUNC2(adev, cursor)) {
		/* No sibling, go to our parents and grandparents */
		if (!FUNC0(cursor)) {
			cursor->pfn = ~0ll;
			return;
		}
	}
}