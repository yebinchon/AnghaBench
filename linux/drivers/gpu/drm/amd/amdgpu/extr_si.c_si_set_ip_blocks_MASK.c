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
struct amdgpu_device {int asic_type; int /*<<< orphan*/  enable_virtual_display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CHIP_HAINAN 132 
#define  CHIP_OLAND 131 
#define  CHIP_PITCAIRN 130 
#define  CHIP_TAHITI 129 
#define  CHIP_VERDE 128 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dce_v6_0_ip_block ; 
 int /*<<< orphan*/  dce_v6_4_ip_block ; 
 int /*<<< orphan*/  dce_virtual_ip_block ; 
 int /*<<< orphan*/  gfx_v6_0_ip_block ; 
 int /*<<< orphan*/  gmc_v6_0_ip_block ; 
 int /*<<< orphan*/  si_common_ip_block ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  si_dma_ip_block ; 
 int /*<<< orphan*/  si_ih_ip_block ; 
 int /*<<< orphan*/  si_smu_ip_block ; 

int FUNC3(struct amdgpu_device *adev)
{
	FUNC2(adev);

	switch (adev->asic_type) {
	case CHIP_VERDE:
	case CHIP_TAHITI:
	case CHIP_PITCAIRN:
		FUNC1(adev, &si_common_ip_block);
		FUNC1(adev, &gmc_v6_0_ip_block);
		FUNC1(adev, &si_ih_ip_block);
		FUNC1(adev, &gfx_v6_0_ip_block);
		FUNC1(adev, &si_dma_ip_block);
		FUNC1(adev, &si_smu_ip_block);
		if (adev->enable_virtual_display)
			FUNC1(adev, &dce_virtual_ip_block);
		else
			FUNC1(adev, &dce_v6_0_ip_block);
		/* amdgpu_device_ip_block_add(adev, &uvd_v3_1_ip_block); */
		/* amdgpu_device_ip_block_add(adev, &vce_v1_0_ip_block); */
		break;
	case CHIP_OLAND:
		FUNC1(adev, &si_common_ip_block);
		FUNC1(adev, &gmc_v6_0_ip_block);
		FUNC1(adev, &si_ih_ip_block);
		FUNC1(adev, &gfx_v6_0_ip_block);
		FUNC1(adev, &si_dma_ip_block);
		FUNC1(adev, &si_smu_ip_block);
		if (adev->enable_virtual_display)
			FUNC1(adev, &dce_virtual_ip_block);
		else
			FUNC1(adev, &dce_v6_4_ip_block);

		/* amdgpu_device_ip_block_add(adev, &uvd_v3_1_ip_block); */
		/* amdgpu_device_ip_block_add(adev, &vce_v1_0_ip_block); */
		break;
	case CHIP_HAINAN:
		FUNC1(adev, &si_common_ip_block);
		FUNC1(adev, &gmc_v6_0_ip_block);
		FUNC1(adev, &si_ih_ip_block);
		FUNC1(adev, &gfx_v6_0_ip_block);
		FUNC1(adev, &si_dma_ip_block);
		FUNC1(adev, &si_smu_ip_block);
		if (adev->enable_virtual_display)
			FUNC1(adev, &dce_virtual_ip_block);
		break;
	default:
		FUNC0();
	}
	return 0;
}