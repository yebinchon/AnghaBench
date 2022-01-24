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
typedef  int u64 ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC ; 
 int GCMC_VM_FB_LOCATION_BASE__FB_BASE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmGCMC_VM_FB_LOCATION_BASE ; 

u64 FUNC1(struct amdgpu_device *adev)
{
	u64 base = FUNC0(GC, 0, mmGCMC_VM_FB_LOCATION_BASE);

	base &= GCMC_VM_FB_LOCATION_BASE__FB_BASE_MASK;
	base <<= 24;

	return base;
}