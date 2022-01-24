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
typedef  scalar_t__ u32 ;
struct intel_vgpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (struct intel_vgpu*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct intel_vgpu*,scalar_t__) ; 
 int FUNC3 (struct intel_vgpu*,scalar_t__) ; 

bool FUNC4(struct intel_vgpu *vgpu, u64 addr, u32 size)
{
	if (size == 0)
		return FUNC3(vgpu, addr);

	if (FUNC1(vgpu, addr) &&
	    FUNC1(vgpu, addr + size - 1))
		return true;
	else if (FUNC2(vgpu, addr) &&
		 FUNC2(vgpu, addr + size - 1))
		return true;

	FUNC0("Invalid ggtt range at 0x%llx, size: 0x%x\n",
		     addr, size);
	return false;
}