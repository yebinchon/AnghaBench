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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int gart_start; int gart_end; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmGCVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32 ; 
 int /*<<< orphan*/  mmGCVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32 ; 
 int /*<<< orphan*/  mmGCVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32 ; 
 int /*<<< orphan*/  mmGCVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32 ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev)
{
	FUNC1(adev);

	FUNC0(GC, 0, mmGCVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32,
		     (u32)(adev->gmc.gart_start >> 12));
	FUNC0(GC, 0, mmGCVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32,
		     (u32)(adev->gmc.gart_start >> 44));

	FUNC0(GC, 0, mmGCVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32,
		     (u32)(adev->gmc.gart_end >> 12));
	FUNC0(GC, 0, mmGCVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32,
		     (u32)(adev->gmc.gart_end >> 44));
}