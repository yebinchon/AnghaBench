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
struct intel_vgpu {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 scalar_t__ FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct intel_vgpu*) ; 
 scalar_t__ FUNC2 (struct intel_vgpu*) ; 
 scalar_t__ FUNC3 (struct intel_vgpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_vgpu*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct intel_vgpu*) ; 
 scalar_t__ FUNC6 (struct intel_vgpu*) ; 

int FUNC7(struct intel_vgpu *vgpu, u64 g_addr, u64 *h_addr)
{
	if (FUNC0(!FUNC4(vgpu, g_addr),
		 "invalid guest gmadr %llx\n", g_addr))
		return -EACCES;

	if (FUNC3(vgpu, g_addr))
		*h_addr = FUNC1(vgpu)
			  + (g_addr - FUNC2(vgpu));
	else
		*h_addr = FUNC5(vgpu)
			  + (g_addr - FUNC6(vgpu));
	return 0;
}