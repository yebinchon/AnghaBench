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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int gpu_addr; } ;
struct radeon_device {TYPE_1__ vce; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCE_CLOCK_GATING_A ; 
 int /*<<< orphan*/  VCE_CLOCK_GATING_B ; 
 int /*<<< orphan*/  VCE_LMI_CACHE_CTRL ; 
 int /*<<< orphan*/  VCE_LMI_CTRL ; 
 int /*<<< orphan*/  VCE_LMI_CTRL2 ; 
 int /*<<< orphan*/  VCE_LMI_SWAP_CNTL ; 
 int /*<<< orphan*/  VCE_LMI_SWAP_CNTL1 ; 
 int /*<<< orphan*/  VCE_LMI_VCPU_CACHE_40BIT_BAR ; 
 int /*<<< orphan*/  VCE_LMI_VM_CTRL ; 
 int /*<<< orphan*/  VCE_SYS_INT_EN ; 
 int VCE_SYS_INT_TRAP_INTERRUPT_EN ; 
 int /*<<< orphan*/  VCE_UENC_CLOCK_GATING ; 
 int /*<<< orphan*/  VCE_UENC_REG_CLOCK_GATING ; 
 int VCE_V2_0_DATA_SIZE ; 
 int VCE_V2_0_FW_SIZE ; 
 int VCE_V2_0_STACK_SIZE ; 
 int /*<<< orphan*/  VCE_VCPU_CACHE_OFFSET0 ; 
 int /*<<< orphan*/  VCE_VCPU_CACHE_OFFSET1 ; 
 int /*<<< orphan*/  VCE_VCPU_CACHE_OFFSET2 ; 
 int /*<<< orphan*/  VCE_VCPU_CACHE_SIZE0 ; 
 int /*<<< orphan*/  VCE_VCPU_CACHE_SIZE1 ; 
 int /*<<< orphan*/  VCE_VCPU_CACHE_SIZE2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 

int FUNC3(struct radeon_device *rdev)
{
	uint64_t addr = rdev->vce.gpu_addr;
	uint32_t size;

	FUNC1(VCE_CLOCK_GATING_A, 0, ~(1 << 16));
	FUNC1(VCE_UENC_CLOCK_GATING, 0x1FF000, ~0xFF9FF000);
	FUNC1(VCE_UENC_REG_CLOCK_GATING, 0x3F, ~0x3F);
	FUNC0(VCE_CLOCK_GATING_B, 0xf7);

	FUNC0(VCE_LMI_CTRL, 0x00398000);
	FUNC1(VCE_LMI_CACHE_CTRL, 0x0, ~0x1);
	FUNC0(VCE_LMI_SWAP_CNTL, 0);
	FUNC0(VCE_LMI_SWAP_CNTL1, 0);
	FUNC0(VCE_LMI_VM_CTRL, 0);

	FUNC0(VCE_LMI_VCPU_CACHE_40BIT_BAR, addr >> 8);

	addr &= 0xff;
	size = VCE_V2_0_FW_SIZE;
	FUNC0(VCE_VCPU_CACHE_OFFSET0, addr & 0x7fffffff);
	FUNC0(VCE_VCPU_CACHE_SIZE0, size);

	addr += size;
	size = VCE_V2_0_STACK_SIZE;
	FUNC0(VCE_VCPU_CACHE_OFFSET1, addr & 0x7fffffff);
	FUNC0(VCE_VCPU_CACHE_SIZE1, size);

	addr += size;
	size = VCE_V2_0_DATA_SIZE;
	FUNC0(VCE_VCPU_CACHE_OFFSET2, addr & 0x7fffffff);
	FUNC0(VCE_VCPU_CACHE_SIZE2, size);

	FUNC1(VCE_LMI_CTRL2, 0x0, ~0x100);

	FUNC1(VCE_SYS_INT_EN, VCE_SYS_INT_TRAP_INTERRUPT_EN,
		 ~VCE_SYS_INT_TRAP_INTERRUPT_EN);

	FUNC2(rdev);

	return 0;
}