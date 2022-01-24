#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_10__ {int num_vcn_inst; int harvest_config; TYPE_4__* inst; TYPE_1__* fw; } ;
struct TYPE_8__ {scalar_t__ load_type; TYPE_2__* ucode; } ;
struct amdgpu_device {TYPE_5__ vcn; TYPE_3__ firmware; } ;
struct TYPE_9__ {int gpu_addr; } ;
struct TYPE_7__ {int tmr_mc_addr_lo; int tmr_mc_addr_hi; } ;
struct TYPE_6__ {scalar_t__ size; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
 int FUNC0 (scalar_t__) ; 
 size_t AMDGPU_UCODE_ID_VCN ; 
 int AMDGPU_UVD_FIRMWARE_OFFSET ; 
 int AMDGPU_VCN_CONTEXT_SIZE ; 
 int AMDGPU_VCN_STACK_SIZE ; 
 int /*<<< orphan*/  UVD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_LOW ; 
 int /*<<< orphan*/  mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_LOW ; 
 int /*<<< orphan*/  mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_OFFSET0 ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_OFFSET1 ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_OFFSET2 ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_SIZE0 ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_SIZE1 ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_SIZE2 ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev)
{
	uint32_t size = FUNC0(adev->vcn.fw->size + 4);
	uint32_t offset;
	int i;

	for (i = 0; i < adev->vcn.num_vcn_inst; ++i) {
		if (adev->vcn.harvest_config & (1 << i))
			continue;
		/* cache window 0: fw */
		if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
			FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW,
				(adev->firmware.ucode[AMDGPU_UCODE_ID_VCN].tmr_mc_addr_lo));
			FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH,
				(adev->firmware.ucode[AMDGPU_UCODE_ID_VCN].tmr_mc_addr_hi));
			FUNC1(UVD, i, mmUVD_VCPU_CACHE_OFFSET0, 0);
			offset = 0;
		} else {
			FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW,
				FUNC2(adev->vcn.inst[i].gpu_addr));
			FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH,
				FUNC3(adev->vcn.inst[i].gpu_addr));
			offset = size;
			FUNC1(UVD, i, mmUVD_VCPU_CACHE_OFFSET0,
				AMDGPU_UVD_FIRMWARE_OFFSET >> 3);
		}
		FUNC1(UVD, i, mmUVD_VCPU_CACHE_SIZE0, size);

		/* cache window 1: stack */
		FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_LOW,
			FUNC2(adev->vcn.inst[i].gpu_addr + offset));
		FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_HIGH,
			FUNC3(adev->vcn.inst[i].gpu_addr + offset));
		FUNC1(UVD, i, mmUVD_VCPU_CACHE_OFFSET1, 0);
		FUNC1(UVD, i, mmUVD_VCPU_CACHE_SIZE1, AMDGPU_VCN_STACK_SIZE);

		/* cache window 2: context */
		FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_LOW,
			FUNC2(adev->vcn.inst[i].gpu_addr + offset + AMDGPU_VCN_STACK_SIZE));
		FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_HIGH,
			FUNC3(adev->vcn.inst[i].gpu_addr + offset + AMDGPU_VCN_STACK_SIZE));
		FUNC1(UVD, i, mmUVD_VCPU_CACHE_OFFSET2, 0);
		FUNC1(UVD, i, mmUVD_VCPU_CACHE_SIZE2, AMDGPU_VCN_CONTEXT_SIZE);
	}
}