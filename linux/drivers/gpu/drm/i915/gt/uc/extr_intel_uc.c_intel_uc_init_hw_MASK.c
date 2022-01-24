#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  minor_ver_found; int /*<<< orphan*/  major_ver_found; int /*<<< orphan*/  path; } ;
struct intel_huc {TYPE_1__ fw; } ;
struct TYPE_9__ {int /*<<< orphan*/  minor_ver_found; int /*<<< orphan*/  major_ver_found; int /*<<< orphan*/  path; int /*<<< orphan*/  status; } ;
struct intel_guc {TYPE_4__ fw; } ;
struct intel_uc {struct intel_huc huc; struct intel_guc guc; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct TYPE_8__ {struct drm_i915_private* i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int EIO ; 
 int /*<<< orphan*/  INTEL_UC_FW_TYPE_GUC ; 
 int /*<<< orphan*/  INTEL_UC_FW_TYPE_HUC ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uc*) ; 
 int FUNC3 (struct intel_uc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_guc*) ; 
 int FUNC8 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_guc*) ; 
 int FUNC12 (struct intel_guc*) ; 
 int FUNC13 (struct intel_guc*) ; 
 int FUNC14 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_huc*) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_huc*) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_huc*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 scalar_t__ FUNC20 (TYPE_4__*) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct intel_uc*) ; 
 scalar_t__ FUNC24 (struct intel_uc*) ; 
 int /*<<< orphan*/  FUNC25 (struct intel_uc*) ; 
 scalar_t__ FUNC26 (struct intel_uc*) ; 
 int FUNC27 (struct intel_uc*) ; 
 scalar_t__ FUNC28 (struct intel_uc*) ; 
 TYPE_3__* FUNC29 (struct intel_uc*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 

int FUNC31(struct intel_uc *uc)
{
	struct drm_i915_private *i915 = FUNC29(uc)->i915;
	struct intel_guc *guc = &uc->guc;
	struct intel_huc *huc = &uc->huc;
	int ret, attempts;

	if (!FUNC23(uc))
		return 0;

	/*
	 * We can silently continue without GuC only if it was never enabled
	 * before on this system after reboot, otherwise we risk GPU hangs.
	 * To check if GuC was loaded before we look at WOPCM registers.
	 */
	if (!FUNC25(uc) && !FUNC28(uc))
		return 0;

	if (!FUNC19(&guc->fw)) {
		ret = FUNC28(uc) ||
		      FUNC20(&guc->fw) ||
		      FUNC24(uc) ?
		      FUNC21(guc->fw.status) : 0;
		goto err_out;
	}

	ret = FUNC27(uc);
	if (ret)
		goto err_out;

	FUNC9(guc);

	/* WaEnableuKernelHeaderValidFix:skl */
	/* WaEnableGuCBootHashCheckNotSet:skl,bxt,kbl */
	if (FUNC1(i915, 9))
		attempts = 3;
	else
		attempts = 1;

	while (attempts--) {
		/*
		 * Always reset the GuC just before (re)loading, so
		 * that the state and timing are fairly predictable
		 */
		ret = FUNC3(uc);
		if (ret)
			goto err_out;

		FUNC17(huc);
		FUNC11(guc);
		FUNC15(guc);
		ret = FUNC12(guc);
		if (ret == 0)
			break;

		FUNC0("GuC fw load failed: %d; will reset and "
				 "retry %d more time(s)\n", ret, attempts);
	}

	/* Did we succeded or run out of retries? */
	if (ret)
		goto err_log_capture;

	ret = FUNC8(guc);
	if (ret)
		goto err_log_capture;

	FUNC16(huc);

	ret = FUNC13(guc);
	if (ret)
		goto err_communication;

	if (FUNC24(uc)) {
		ret = FUNC14(guc);
		if (ret)
			goto err_communication;
	}

	FUNC4(i915->drm.dev, "%s firmware %s version %u.%u %s:%s\n",
		 FUNC22(INTEL_UC_FW_TYPE_GUC), guc->fw.path,
		 guc->fw.major_ver_found, guc->fw.minor_ver_found,
		 "submission",
		 FUNC6(FUNC24(uc)));

	if (FUNC26(uc)) {
		FUNC4(i915->drm.dev, "%s firmware %s version %u.%u %s:%s\n",
			 FUNC22(INTEL_UC_FW_TYPE_HUC),
			 huc->fw.path,
			 huc->fw.major_ver_found, huc->fw.minor_ver_found,
			 "authenticated",
			 FUNC30(FUNC18(huc)));
	}

	return 0;

	/*
	 * We've failed to load the firmware :(
	 */
err_communication:
	FUNC7(guc);
err_log_capture:
	FUNC2(uc);
err_out:
	FUNC3(uc);

	if (!ret) {
		FUNC5(i915->drm.dev, "GuC is uninitialized\n");
		/* We want to run without GuC submission */
		return 0;
	}

	FUNC10(i915, "GuC initialization failed %d\n", ret);

	/* We want to keep KMS alive */
	return -EIO;
}