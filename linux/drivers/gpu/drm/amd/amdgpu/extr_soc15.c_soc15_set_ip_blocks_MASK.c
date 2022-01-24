#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  load_type; } ;
struct TYPE_10__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_8__ {int supported; } ;
struct TYPE_9__ {TYPE_1__ xgmi; } ;
struct amdgpu_device {int asic_type; int flags; int /*<<< orphan*/  enable_virtual_display; TYPE_4__ firmware; TYPE_3__ virt; TYPE_5__* nbio_funcs; int /*<<< orphan*/  rev_id; int /*<<< orphan*/ * df_funcs; TYPE_2__ gmc; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* detect_hw_virt ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_FW_LOAD_PSP ; 
 int AMD_IS_APU ; 
#define  CHIP_ARCTURUS 133 
#define  CHIP_RAVEN 132 
#define  CHIP_RENOIR 131 
#define  CHIP_VEGA10 130 
#define  CHIP_VEGA12 129 
#define  CHIP_VEGA20 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  dce_virtual_ip_block ; 
 int /*<<< orphan*/  df_v1_7_funcs ; 
 int /*<<< orphan*/  df_v3_6_funcs ; 
 int /*<<< orphan*/  dm_ip_block ; 
 int /*<<< orphan*/  gfx_v9_0_ip_block ; 
 int /*<<< orphan*/  gmc_v9_0_ip_block ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_5__ nbio_v6_1_funcs ; 
 TYPE_5__ nbio_v7_0_funcs ; 
 TYPE_5__ nbio_v7_4_funcs ; 
 int /*<<< orphan*/  pp_smu_ip_block ; 
 int /*<<< orphan*/  psp_v10_0_ip_block ; 
 int /*<<< orphan*/  psp_v11_0_ip_block ; 
 int /*<<< orphan*/  psp_v12_0_ip_block ; 
 int /*<<< orphan*/  psp_v3_1_ip_block ; 
 int /*<<< orphan*/  sdma_v4_0_ip_block ; 
 int /*<<< orphan*/  smu_v11_0_ip_block ; 
 int /*<<< orphan*/  smu_v12_0_ip_block ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  uvd_v7_0_ip_block ; 
 int /*<<< orphan*/  vce_v4_0_ip_block ; 
 int /*<<< orphan*/  vcn_v1_0_ip_block ; 
 int /*<<< orphan*/  vcn_v2_0_ip_block ; 
 int /*<<< orphan*/  vcn_v2_5_ip_block ; 
 int /*<<< orphan*/  vega10_common_ip_block ; 
 int /*<<< orphan*/  vega10_ih_ip_block ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  xgpu_ai_virt_ops ; 

int FUNC10(struct amdgpu_device *adev)
{
	/* Set IP register base before any HW register access */
	switch (adev->asic_type) {
	case CHIP_VEGA10:
	case CHIP_VEGA12:
	case CHIP_RAVEN:
	case CHIP_RENOIR:
		FUNC8(adev);
		break;
	case CHIP_VEGA20:
		FUNC9(adev);
		break;
	case CHIP_ARCTURUS:
		FUNC3(adev);
		break;
	default:
		return -EINVAL;
	}

	if (adev->asic_type == CHIP_VEGA20 || adev->asic_type == CHIP_ARCTURUS)
		adev->gmc.xgmi.supported = true;

	if (adev->flags & AMD_IS_APU)
		adev->nbio_funcs = &nbio_v7_0_funcs;
	else if (adev->asic_type == CHIP_VEGA20 ||
		adev->asic_type == CHIP_ARCTURUS)
		adev->nbio_funcs = &nbio_v7_4_funcs;
	else
		adev->nbio_funcs = &nbio_v6_1_funcs;

	if (adev->asic_type == CHIP_VEGA20 || adev->asic_type == CHIP_ARCTURUS)
		adev->df_funcs = &df_v3_6_funcs;
	else
		adev->df_funcs = &df_v1_7_funcs;

	adev->rev_id = FUNC6(adev);
	adev->nbio_funcs->detect_hw_virt(adev);

	if (FUNC2(adev))
		adev->virt.ops = &xgpu_ai_virt_ops;

	switch (adev->asic_type) {
	case CHIP_VEGA10:
	case CHIP_VEGA12:
	case CHIP_VEGA20:
		FUNC1(adev, &vega10_common_ip_block);
		FUNC1(adev, &gmc_v9_0_ip_block);

		/* For Vega10 SR-IOV, PSP need to be initialized before IH */
		if (FUNC2(adev)) {
			if (FUNC5(adev->firmware.load_type == AMDGPU_FW_LOAD_PSP)) {
				if (adev->asic_type == CHIP_VEGA20)
					FUNC1(adev, &psp_v11_0_ip_block);
				else
					FUNC1(adev, &psp_v3_1_ip_block);
			}
			FUNC1(adev, &vega10_ih_ip_block);
		} else {
			FUNC1(adev, &vega10_ih_ip_block);
			if (FUNC5(adev->firmware.load_type == AMDGPU_FW_LOAD_PSP)) {
				if (adev->asic_type == CHIP_VEGA20)
					FUNC1(adev, &psp_v11_0_ip_block);
				else
					FUNC1(adev, &psp_v3_1_ip_block);
			}
		}
		FUNC1(adev, &gfx_v9_0_ip_block);
		FUNC1(adev, &sdma_v4_0_ip_block);
		if (!FUNC2(adev)) {
			if (FUNC4(adev))
				FUNC1(adev, &smu_v11_0_ip_block);
			else
				FUNC1(adev, &pp_smu_ip_block);
		}
		if (adev->enable_virtual_display || FUNC2(adev))
			FUNC1(adev, &dce_virtual_ip_block);
#if defined(CONFIG_DRM_AMD_DC)
		else if (amdgpu_device_has_dc_support(adev))
			amdgpu_device_ip_block_add(adev, &dm_ip_block);
#endif
		if (!(adev->asic_type == CHIP_VEGA20 && FUNC2(adev))) {
			FUNC1(adev, &uvd_v7_0_ip_block);
			FUNC1(adev, &vce_v4_0_ip_block);
		}
		break;
	case CHIP_RAVEN:
		FUNC1(adev, &vega10_common_ip_block);
		FUNC1(adev, &gmc_v9_0_ip_block);
		FUNC1(adev, &vega10_ih_ip_block);
		if (FUNC5(adev->firmware.load_type == AMDGPU_FW_LOAD_PSP))
			FUNC1(adev, &psp_v10_0_ip_block);
		FUNC1(adev, &gfx_v9_0_ip_block);
		FUNC1(adev, &sdma_v4_0_ip_block);
		FUNC1(adev, &pp_smu_ip_block);
		if (adev->enable_virtual_display || FUNC2(adev))
			FUNC1(adev, &dce_virtual_ip_block);
#if defined(CONFIG_DRM_AMD_DC)
		else if (amdgpu_device_has_dc_support(adev))
			amdgpu_device_ip_block_add(adev, &dm_ip_block);
#endif
		FUNC1(adev, &vcn_v1_0_ip_block);
		break;
	case CHIP_ARCTURUS:
		FUNC1(adev, &vega10_common_ip_block);
		FUNC1(adev, &gmc_v9_0_ip_block);
		FUNC1(adev, &vega10_ih_ip_block);
		if (adev->enable_virtual_display || FUNC2(adev))
			FUNC1(adev, &dce_virtual_ip_block);
		FUNC1(adev, &gfx_v9_0_ip_block);
		FUNC1(adev, &sdma_v4_0_ip_block);
		FUNC1(adev, &smu_v11_0_ip_block);
		FUNC1(adev, &vcn_v2_5_ip_block);
		break;
	case CHIP_RENOIR:
		FUNC1(adev, &vega10_common_ip_block);
		FUNC1(adev, &gmc_v9_0_ip_block);
		FUNC1(adev, &vega10_ih_ip_block);
		if (FUNC5(adev->firmware.load_type == AMDGPU_FW_LOAD_PSP))
			FUNC1(adev, &psp_v12_0_ip_block);
		if (FUNC4(adev))
			FUNC1(adev, &smu_v12_0_ip_block);
		FUNC1(adev, &gfx_v9_0_ip_block);
		FUNC1(adev, &sdma_v4_0_ip_block);
		if (adev->enable_virtual_display || FUNC2(adev))
			FUNC1(adev, &dce_virtual_ip_block);
#if defined(CONFIG_DRM_AMD_DC)
                else if (amdgpu_device_has_dc_support(adev))
                        amdgpu_device_ip_block_add(adev, &dm_ip_block);
#endif
		FUNC1(adev, &vcn_v2_0_ip_block);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}