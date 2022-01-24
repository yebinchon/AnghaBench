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
typedef  int uint32_t ;
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_6__ {int vram_base_offset; } ;
struct TYPE_5__ {int agp_start; int agp_end; int fb_end; int vram_start; int /*<<< orphan*/  fb_start; } ;
struct TYPE_4__ {int gpu_addr; } ;
struct amdgpu_device {scalar_t__ asic_type; int rev_id; int dummy_page_addr; TYPE_3__ vm_manager; TYPE_2__ gmc; TYPE_1__ vram_scratch; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY ; 
 scalar_t__ CHIP_RAVEN ; 
 int /*<<< orphan*/  MMHUB ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_L2_PROTECTION_FAULT_CNTL2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmMC_VM_AGP_BASE ; 
 int /*<<< orphan*/  mmMC_VM_AGP_BOT ; 
 int /*<<< orphan*/  mmMC_VM_AGP_TOP ; 
 int /*<<< orphan*/  mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB ; 
 int /*<<< orphan*/  mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB ; 
 int /*<<< orphan*/  mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR ; 
 int /*<<< orphan*/  mmMC_VM_SYSTEM_APERTURE_LOW_ADDR ; 
 int /*<<< orphan*/  mmVM_L2_PROTECTION_FAULT_CNTL2 ; 
 int /*<<< orphan*/  mmVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32 ; 
 int /*<<< orphan*/  mmVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32 ; 

__attribute__((used)) static void FUNC6(struct amdgpu_device *adev)
{
	uint64_t value;
	uint32_t tmp;

	/* Program the AGP BAR */
	FUNC2(MMHUB, 0, mmMC_VM_AGP_BASE, 0);
	FUNC2(MMHUB, 0, mmMC_VM_AGP_BOT, adev->gmc.agp_start >> 24);
	FUNC2(MMHUB, 0, mmMC_VM_AGP_TOP, adev->gmc.agp_end >> 24);

	/* Program the system aperture low logical page number. */
	FUNC2(MMHUB, 0, mmMC_VM_SYSTEM_APERTURE_LOW_ADDR,
		     FUNC5(adev->gmc.fb_start, adev->gmc.agp_start) >> 18);

	if (adev->asic_type == CHIP_RAVEN && adev->rev_id >= 0x8)
		/*
		 * Raven2 has a HW issue that it is unable to use the vram which
		 * is out of MC_VM_SYSTEM_APERTURE_HIGH_ADDR. So here is the
		 * workaround that increase system aperture high address (add 1)
		 * to get rid of the VM fault and hardware hang.
		 */
		FUNC2(MMHUB, 0, mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR,
			     FUNC4((adev->gmc.fb_end >> 18) + 0x1,
				 adev->gmc.agp_end >> 18));
	else
		FUNC2(MMHUB, 0, mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR,
			     FUNC4(adev->gmc.fb_end, adev->gmc.agp_end) >> 18);

	if (FUNC3(adev))
		return;

	/* Set default page address. */
	value = adev->vram_scratch.gpu_addr - adev->gmc.vram_start +
		adev->vm_manager.vram_base_offset;
	FUNC2(MMHUB, 0, mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB,
		     (u32)(value >> 12));
	FUNC2(MMHUB, 0, mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB,
		     (u32)(value >> 44));

	/* Program "protection fault". */
	FUNC2(MMHUB, 0, mmVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32,
		     (u32)(adev->dummy_page_addr >> 12));
	FUNC2(MMHUB, 0, mmVM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32,
		     (u32)((u64)adev->dummy_page_addr >> 44));

	tmp = FUNC1(MMHUB, 0, mmVM_L2_PROTECTION_FAULT_CNTL2);
	tmp = FUNC0(tmp, VM_L2_PROTECTION_FAULT_CNTL2,
			    ACTIVE_PAGE_MIGRATION_PTE_READ_RETRY, 1);
	FUNC2(MMHUB, 0, mmVM_L2_PROTECTION_FAULT_CNTL2, tmp);
}