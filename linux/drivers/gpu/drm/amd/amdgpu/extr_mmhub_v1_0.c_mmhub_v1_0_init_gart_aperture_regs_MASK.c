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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int gart_start; int gart_end; } ;
struct TYPE_4__ {int /*<<< orphan*/  bo; } ;
struct amdgpu_device {TYPE_1__ gmc; TYPE_2__ gart; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMHUB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32 ; 
 int /*<<< orphan*/  mmVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32 ; 
 int /*<<< orphan*/  mmVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32 ; 
 int /*<<< orphan*/  mmVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32 ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	uint64_t pt_base = FUNC1(adev->gart.bo);

	FUNC2(adev, 0, pt_base);

	FUNC0(MMHUB, 0, mmVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32,
		     (u32)(adev->gmc.gart_start >> 12));
	FUNC0(MMHUB, 0, mmVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32,
		     (u32)(adev->gmc.gart_start >> 44));

	FUNC0(MMHUB, 0, mmVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32,
		     (u32)(adev->gmc.gart_end >> 12));
	FUNC0(MMHUB, 0, mmVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32,
		     (u32)(adev->gmc.gart_end >> 44));
}