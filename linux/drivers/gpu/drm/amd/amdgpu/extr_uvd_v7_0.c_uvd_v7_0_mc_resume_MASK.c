#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_12__ {int num_uvd_inst; int harvest_config; int max_handles; TYPE_3__* inst; } ;
struct TYPE_10__ {int gb_addr_config; } ;
struct TYPE_11__ {TYPE_4__ config; } ;
struct TYPE_8__ {scalar_t__ load_type; TYPE_1__* ucode; } ;
struct amdgpu_device {TYPE_6__ uvd; TYPE_5__ gfx; TYPE_2__ firmware; } ;
struct TYPE_9__ {int gpu_addr; } ;
struct TYPE_7__ {int tmr_mc_addr_lo; int tmr_mc_addr_hi; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
 size_t AMDGPU_UCODE_ID_UVD ; 
 size_t AMDGPU_UCODE_ID_UVD1 ; 
 int AMDGPU_UVD_FIRMWARE_OFFSET ; 
 int FUNC0 (struct amdgpu_device*) ; 
 int AMDGPU_UVD_HEAP_SIZE ; 
 int AMDGPU_UVD_SESSION_SIZE ; 
 int AMDGPU_UVD_STACK_SIZE ; 
 int /*<<< orphan*/  UVD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  mmUVD_GP_SCRATCH4 ; 
 int /*<<< orphan*/  mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_LOW ; 
 int /*<<< orphan*/  mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_LOW ; 
 int /*<<< orphan*/  mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW ; 
 int /*<<< orphan*/  mmUVD_UDEC_ADDR_CONFIG ; 
 int /*<<< orphan*/  mmUVD_UDEC_DBW_ADDR_CONFIG ; 
 int /*<<< orphan*/  mmUVD_UDEC_DB_ADDR_CONFIG ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_OFFSET0 ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_OFFSET1 ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_OFFSET2 ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_SIZE0 ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_SIZE1 ; 
 int /*<<< orphan*/  mmUVD_VCPU_CACHE_SIZE2 ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev)
{
	uint32_t size = FUNC0(adev);
	uint32_t offset;
	int i;

	for (i = 0; i < adev->uvd.num_uvd_inst; ++i) {
		if (adev->uvd.harvest_config & (1 << i))
			continue;
		if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
			FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW,
				i == 0 ?
				adev->firmware.ucode[AMDGPU_UCODE_ID_UVD].tmr_mc_addr_lo:
				adev->firmware.ucode[AMDGPU_UCODE_ID_UVD1].tmr_mc_addr_lo);
			FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH,
				i == 0 ?
				adev->firmware.ucode[AMDGPU_UCODE_ID_UVD].tmr_mc_addr_hi:
				adev->firmware.ucode[AMDGPU_UCODE_ID_UVD1].tmr_mc_addr_hi);
			FUNC1(UVD, i, mmUVD_VCPU_CACHE_OFFSET0, 0);
			offset = 0;
		} else {
			FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW,
				FUNC2(adev->uvd.inst[i].gpu_addr));
			FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH,
				FUNC3(adev->uvd.inst[i].gpu_addr));
			offset = size;
			FUNC1(UVD, i, mmUVD_VCPU_CACHE_OFFSET0,
					AMDGPU_UVD_FIRMWARE_OFFSET >> 3);
		}

		FUNC1(UVD, i, mmUVD_VCPU_CACHE_SIZE0, size);

		FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_LOW,
				FUNC2(adev->uvd.inst[i].gpu_addr + offset));
		FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_HIGH,
				FUNC3(adev->uvd.inst[i].gpu_addr + offset));
		FUNC1(UVD, i, mmUVD_VCPU_CACHE_OFFSET1, (1 << 21));
		FUNC1(UVD, i, mmUVD_VCPU_CACHE_SIZE1, AMDGPU_UVD_HEAP_SIZE);

		FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_LOW,
				FUNC2(adev->uvd.inst[i].gpu_addr + offset + AMDGPU_UVD_HEAP_SIZE));
		FUNC1(UVD, i, mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_HIGH,
				FUNC3(adev->uvd.inst[i].gpu_addr + offset + AMDGPU_UVD_HEAP_SIZE));
		FUNC1(UVD, i, mmUVD_VCPU_CACHE_OFFSET2, (2 << 21));
		FUNC1(UVD, i, mmUVD_VCPU_CACHE_SIZE2,
				AMDGPU_UVD_STACK_SIZE + (AMDGPU_UVD_SESSION_SIZE * 40));

		FUNC1(UVD, i, mmUVD_UDEC_ADDR_CONFIG,
				adev->gfx.config.gb_addr_config);
		FUNC1(UVD, i, mmUVD_UDEC_DB_ADDR_CONFIG,
				adev->gfx.config.gb_addr_config);
		FUNC1(UVD, i, mmUVD_UDEC_DBW_ADDR_CONFIG,
				adev->gfx.config.gb_addr_config);

		FUNC1(UVD, i, mmUVD_GP_SCRATCH4, adev->uvd.max_handles);
	}
}