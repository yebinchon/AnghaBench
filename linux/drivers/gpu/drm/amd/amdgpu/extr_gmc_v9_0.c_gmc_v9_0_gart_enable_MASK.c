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
typedef  int u32 ;
struct TYPE_6__ {int ready; int /*<<< orphan*/ * bo; } ;
struct TYPE_5__ {int vram_start; int gart_size; } ;
struct amdgpu_device {int asic_type; int num_vmhubs; TYPE_3__ gart; TYPE_2__ gmc; TYPE_1__* nbio_funcs; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* hdp_flush ) (struct amdgpu_device*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ AMDGPU_VM_FAULT_STOP_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CHIP_ARCTURUS ; 
#define  CHIP_RAVEN 128 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned long long) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FLUSH_INVALIDATE_CACHE ; 
 int /*<<< orphan*/  HDP ; 
 int /*<<< orphan*/  HDP_MISC_CNTL ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct amdgpu_device*) ; 
 scalar_t__ amdgpu_vm_fault_stop ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  golden_settings_vega10_hdp ; 
 int /*<<< orphan*/  mmHDP_HOST_PATH_CNTL ; 
 int /*<<< orphan*/  mmHDP_NONSURFACE_BASE ; 
 int /*<<< orphan*/  mmHDP_NONSURFACE_BASE_HI ; 
 int FUNC12 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct amdgpu_device*,int) ; 
 int FUNC15 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct amdgpu_device *adev)
{
	int r, i;
	bool value;
	u32 tmp;

	FUNC6(adev,
						golden_settings_vega10_hdp,
						FUNC0(golden_settings_vega10_hdp));

	if (adev->gart.bo == NULL) {
		FUNC8(adev->dev, "No VRAM object for PCIE GART.\n");
		return -EINVAL;
	}
	r = FUNC7(adev);
	if (r)
		return r;

	switch (adev->asic_type) {
	case CHIP_RAVEN:
		/* TODO for renoir */
		FUNC14(adev, true);
		break;
	default:
		break;
	}

	r = FUNC9(adev);
	if (r)
		return r;

	if (adev->asic_type == CHIP_ARCTURUS)
		r = FUNC15(adev);
	else
		r = FUNC12(adev);
	if (r)
		return r;

	FUNC3(HDP, 0, HDP_MISC_CNTL, FLUSH_INVALIDATE_CACHE, 1);

	tmp = FUNC2(HDP, 0, mmHDP_HOST_PATH_CNTL);
	FUNC4(HDP, 0, mmHDP_HOST_PATH_CNTL, tmp);

	FUNC4(HDP, 0, mmHDP_NONSURFACE_BASE, (adev->gmc.vram_start >> 8));
	FUNC4(HDP, 0, mmHDP_NONSURFACE_BASE_HI, (adev->gmc.vram_start >> 40));

	/* After HDP is initialized, flush HDP.*/
	adev->nbio_funcs->hdp_flush(adev, NULL);

	if (amdgpu_vm_fault_stop == AMDGPU_VM_FAULT_STOP_ALWAYS)
		value = false;
	else
		value = true;

	FUNC10(adev, value);
	if (adev->asic_type == CHIP_ARCTURUS)
		FUNC16(adev, value);
	else
		FUNC13(adev, value);

	for (i = 0; i < adev->num_vmhubs; ++i)
		FUNC11(adev, 0, i, 0);

	FUNC1("PCIE GART of %uM enabled (table at 0x%016llX).\n",
		 (unsigned)(adev->gmc.gart_size >> 20),
		 (unsigned long long)FUNC5(adev->gart.bo));
	adev->gart.ready = true;
	return 0;
}