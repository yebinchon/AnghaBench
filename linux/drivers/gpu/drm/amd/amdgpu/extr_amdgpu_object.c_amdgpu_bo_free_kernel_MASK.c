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
typedef  scalar_t__ u64 ;
struct amdgpu_bo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo*) ; 
 scalar_t__ FUNC1 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_bo*) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct amdgpu_bo **bo, u64 *gpu_addr,
			   void **cpu_addr)
{
	if (*bo == NULL)
		return;

	if (FUNC5(FUNC1(*bo, true) == 0)) {
		if (cpu_addr)
			FUNC0(*bo);

		FUNC2(*bo);
		FUNC4(*bo);
	}
	FUNC3(bo);

	if (gpu_addr)
		*gpu_addr = 0;

	if (cpu_addr)
		*cpu_addr = NULL;
}