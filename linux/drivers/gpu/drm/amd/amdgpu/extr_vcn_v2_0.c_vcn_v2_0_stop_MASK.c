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
typedef  int uint32_t ;
struct TYPE_2__ {scalar_t__ dpm_enabled; } ;
struct amdgpu_device {int pg_flags; TYPE_1__ pm; } ;

/* Variables and functions */
 int AMD_PG_SUPPORT_VCN_DPG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  UVD ; 
 int UVD_LMI_CTRL2__STALL_ARB_UMC_MASK ; 
 int UVD_LMI_STATUS__READ_CLEAN_MASK ; 
 int UVD_LMI_STATUS__UMC_READ_CLEAN_RAW_MASK ; 
 int UVD_LMI_STATUS__UMC_WRITE_CLEAN_RAW_MASK ; 
 int UVD_LMI_STATUS__VCPU_LMI_WRITE_CLEAN_MASK ; 
 int UVD_LMI_STATUS__WRITE_CLEAN_MASK ; 
 int UVD_LMI_STATUS__WRITE_CLEAN_RAW_MASK ; 
 int /*<<< orphan*/  UVD_SOFT_RESET__LMI_SOFT_RESET_MASK ; 
 int /*<<< orphan*/  UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK ; 
 int /*<<< orphan*/  UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK ; 
 int UVD_STATUS__IDLE ; 
 int /*<<< orphan*/  UVD_VCPU_CNTL__CLK_EN_MASK ; 
 int /*<<< orphan*/  VCN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 
 int FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmUVD_LMI_CTRL2 ; 
 int /*<<< orphan*/  mmUVD_LMI_STATUS ; 
 int /*<<< orphan*/  mmUVD_SOFT_RESET ; 
 int /*<<< orphan*/  mmUVD_STATUS ; 
 int /*<<< orphan*/  mmUVD_VCPU_CNTL ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*) ; 
 int FUNC9 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC10(struct amdgpu_device *adev)
{
	uint32_t tmp;
	int r;

	r = FUNC6(adev);
	if (r)
		return r;

	if (adev->pg_flags & AMD_PG_SUPPORT_VCN_DPG) {
		r = FUNC9(adev);
		if (r)
			return r;
		goto power_off;
	}

	/* wait for uvd idle */
	FUNC2(VCN, 0, mmUVD_STATUS, UVD_STATUS__IDLE, 0x7, r);
	if (r)
		return r;

	tmp = UVD_LMI_STATUS__VCPU_LMI_WRITE_CLEAN_MASK |
		UVD_LMI_STATUS__READ_CLEAN_MASK |
		UVD_LMI_STATUS__WRITE_CLEAN_MASK |
		UVD_LMI_STATUS__WRITE_CLEAN_RAW_MASK;
	FUNC2(VCN, 0, mmUVD_LMI_STATUS, tmp, tmp, r);
	if (r)
		return r;

	/* stall UMC channel */
	tmp = FUNC0(VCN, 0, mmUVD_LMI_CTRL2);
	tmp |= UVD_LMI_CTRL2__STALL_ARB_UMC_MASK;
	FUNC4(VCN, 0, mmUVD_LMI_CTRL2, tmp);

	tmp = UVD_LMI_STATUS__UMC_READ_CLEAN_RAW_MASK|
		UVD_LMI_STATUS__UMC_WRITE_CLEAN_RAW_MASK;
	FUNC2(VCN, 0, mmUVD_LMI_STATUS, tmp, tmp, r);
	if (r)
		return r;

	/* disable VCPU clock */
	FUNC3(FUNC1(UVD, 0, mmUVD_VCPU_CNTL), 0,
		~(UVD_VCPU_CNTL__CLK_EN_MASK));

	/* reset LMI UMC */
	FUNC3(FUNC1(UVD, 0, mmUVD_SOFT_RESET),
		UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK,
		~UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK);

	/* reset LMI */
	FUNC3(FUNC1(UVD, 0, mmUVD_SOFT_RESET),
		UVD_SOFT_RESET__LMI_SOFT_RESET_MASK,
		~UVD_SOFT_RESET__LMI_SOFT_RESET_MASK);

	/* reset VCPU */
	FUNC3(FUNC1(UVD, 0, mmUVD_SOFT_RESET),
		UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK,
		~UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK);

	/* clear status */
	FUNC4(VCN, 0, mmUVD_STATUS, 0);

	FUNC7(adev);
	FUNC8(adev);

power_off:
	if (adev->pm.dpm_enabled)
		FUNC5(adev, false);

	return 0;
}