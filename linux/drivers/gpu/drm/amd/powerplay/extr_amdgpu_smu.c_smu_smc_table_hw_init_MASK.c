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
struct smu_context {int /*<<< orphan*/  default_power_limit; struct amdgpu_device* adev; } ;
struct amdgpu_device {scalar_t__ asic_type; scalar_t__ in_suspend; } ;

/* Variables and functions */
 scalar_t__ CHIP_ARCTURUS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct smu_context*) ; 
 int FUNC2 (struct smu_context*) ; 
 int FUNC3 (struct smu_context*) ; 
 int FUNC4 (struct smu_context*) ; 
 int FUNC5 (struct smu_context*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct smu_context*) ; 
 int FUNC7 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct smu_context*) ; 
 int FUNC9 (struct smu_context*) ; 
 scalar_t__ FUNC10 (struct smu_context*) ; 
 int FUNC11 (struct smu_context*) ; 
 int FUNC12 (struct smu_context*) ; 
 int FUNC13 (struct smu_context*) ; 
 int FUNC14 (struct smu_context*) ; 
 int FUNC15 (struct smu_context*) ; 
 int FUNC16 (struct smu_context*) ; 
 int FUNC17 (struct smu_context*,int) ; 
 int FUNC18 (struct smu_context*) ; 
 int FUNC19 (struct smu_context*) ; 
 int FUNC20 (struct smu_context*) ; 
 int FUNC21 (struct smu_context*,int) ; 
 int FUNC22 (struct smu_context*) ; 

__attribute__((used)) static int FUNC23(struct smu_context *smu,
				 bool initialize)
{
	struct amdgpu_device *adev = smu->adev;
	int ret;

	if (FUNC10(smu) && adev->in_suspend) {
		FUNC0("dpm has been enabled\n");
		return 0;
	}

	if (adev->asic_type != CHIP_ARCTURUS) {
		ret = FUNC7(smu, 0);
		if (ret)
			return ret;
	}

	if (initialize) {
		/* get boot_values from vbios to set revision, gfxclk, and etc. */
		ret = FUNC6(smu);
		if (ret)
			return ret;

		ret = FUNC20(smu);
		if (ret)
			return ret;

		ret = FUNC4(smu);
		if (ret)
			return ret;

		/*
		 * check if the format_revision in vbios is up to pptable header
		 * version, and the structure size is not 0.
		 */
		ret = FUNC2(smu);
		if (ret)
			return ret;

		/*
		 * allocate vram bos to store smc table contents.
		 */
		ret = FUNC8(smu);
		if (ret)
			return ret;

		/*
		 * Parse pptable format and fill PPTable_t smc_pptable to
		 * smu_table_context structure. And read the smc_dpm_table from vbios,
		 * then fill it into smc_pptable.
		 */
		ret = FUNC13(smu);
		if (ret)
			return ret;

		/*
		 * Send msg GetDriverIfVersion to check if the return value is equal
		 * with DRIVER_IF_VERSION of smc header.
		 */
		ret = FUNC1(smu);
		if (ret)
			return ret;
	}

	/* smu_dump_pptable(smu); */

	/*
	 * Copy pptable bo in the vram to smc with SMU MSGs such as
	 * SetDriverDramAddr and TransferTableDram2Smu.
	 */
	ret = FUNC22(smu);
	if (ret)
		return ret;

	/* issue RunAfllBtc msg */
	ret = FUNC16(smu);
	if (ret)
		return ret;

	ret = FUNC3(smu);
	if (ret)
		return ret;

	ret = FUNC21(smu, true);
	if (ret)
		return ret;

	if (adev->asic_type != CHIP_ARCTURUS) {
		ret = FUNC12(smu);
		if (ret)
			return ret;

		ret = FUNC11(smu);
		if (ret)
			return ret;

		/*
		 * Set min deep sleep dce fclk with bootup value from vbios via
		 * SetMinDeepSleepDcefclk MSG.
		 */
		ret = FUNC18(smu);
		if (ret)
			return ret;
	}

	/*
	 * Set initialized values (get from vbios) to dpm tables context such as
	 * gfxclk, memclk, dcefclk, and etc. And enable the DPM feature for each
	 * type of clks.
	 */
	if (initialize) {
		ret = FUNC14(smu);
		if (ret)
			return ret;

		ret = FUNC9(smu);
		if (ret)
			return ret;
	}

	ret = FUNC17(smu, initialize);
	if (ret)
		return ret;

	if (initialize) {
		ret = FUNC15(smu);
		if (ret)
			return ret;

		ret = FUNC5(smu, &smu->default_power_limit, true);
		if (ret)
			return ret;
	}

	/*
	 * Set PMSTATUSLOG table bo address with SetToolsDramAddr MSG for tools.
	 */
	ret = FUNC19(smu);

	if (!FUNC10(smu))
		FUNC0("dpm has been disabled\n");

	return ret;
}