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
struct intel_vgpu {int /*<<< orphan*/  gvt; } ;

/* Variables and functions */
 int EACCES ; 
 scalar_t__ FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct intel_vgpu*) ; 
 scalar_t__ FUNC6 (struct intel_vgpu*) ; 

int FUNC7(struct intel_vgpu *vgpu, u64 h_addr, u64 *g_addr)
{
	if (FUNC0(!FUNC3(vgpu->gvt, h_addr),
		 "invalid host gmadr %llx\n", h_addr))
		return -EACCES;

	if (FUNC2(vgpu->gvt, h_addr))
		*g_addr = FUNC5(vgpu)
			+ (h_addr - FUNC1(vgpu->gvt));
	else
		*g_addr = FUNC6(vgpu)
			+ (h_addr - FUNC4(vgpu->gvt));
	return 0;
}