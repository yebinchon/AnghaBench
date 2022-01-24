#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_6__ {int vram_base_offset; } ;
struct TYPE_5__ {int vram_start; int vram_end; } ;
struct TYPE_4__ {int gpu_addr; } ;
struct amdgpu_device {int dummy_page_addr; TYPE_3__ vm_manager; TYPE_2__ gmc; TYPE_1__ vram_scratch; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  GCVM_L2_PROTECTION_FAULT_CNTL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmGCMC_VM_AGP_BASE ; 
 int /*<<< orphan*/  mmGCMC_VM_AGP_BOT ; 
 int /*<<< orphan*/  mmGCMC_VM_AGP_TOP ; 
 int /*<<< orphan*/  mmGCMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB ; 
 int /*<<< orphan*/  mmGCMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB ; 
 int /*<<< orphan*/  mmGCMC_VM_SYSTEM_APERTURE_HIGH_ADDR ; 
 int /*<<< orphan*/  mmGCMC_VM_SYSTEM_APERTURE_LOW_ADDR ; 
 int /*<<< orphan*/  mmGCVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32 ; 
 int /*<<< orphan*/  mmGCVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32 ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev)
{
	uint64_t value;

	/* Disable AGP. */
	FUNC1(GC, 0, mmGCMC_VM_AGP_BASE, 0);
	FUNC1(GC, 0, mmGCMC_VM_AGP_TOP, 0);
	FUNC1(GC, 0, mmGCMC_VM_AGP_BOT, 0x00FFFFFF);

	/* Program the system aperture low logical page number. */
	FUNC1(GC, 0, mmGCMC_VM_SYSTEM_APERTURE_LOW_ADDR,
		     adev->gmc.vram_start >> 18);
	FUNC1(GC, 0, mmGCMC_VM_SYSTEM_APERTURE_HIGH_ADDR,
		     adev->gmc.vram_end >> 18);

	/* Set default page address. */
	value = adev->vram_scratch.gpu_addr - adev->gmc.vram_start
		+ adev->vm_manager.vram_base_offset;
	FUNC1(GC, 0, mmGCMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB,
		     (u32)(value >> 12));
	FUNC1(GC, 0, mmGCMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB,
		     (u32)(value >> 44));

	/* Program "protection fault". */
	FUNC1(GC, 0, mmGCVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32,
		     (u32)(adev->dummy_page_addr >> 12));
	FUNC1(GC, 0, mmGCVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32,
		     (u32)((u64)adev->dummy_page_addr >> 44));

	FUNC0(GC, 0, GCVM_L2_PROTECTION_FAULT_CNTL2,
		       ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY, 1);
}