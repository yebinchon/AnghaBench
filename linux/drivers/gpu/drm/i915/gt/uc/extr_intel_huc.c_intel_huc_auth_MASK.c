#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  value; int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; } ;
struct intel_huc {int /*<<< orphan*/  fw; TYPE_2__ status; int /*<<< orphan*/  rsa_data; } ;
struct intel_guc {int dummy; } ;
struct TYPE_3__ {struct intel_guc guc; } ;
struct intel_gt {int /*<<< orphan*/  i915; int /*<<< orphan*/  uncore; TYPE_1__ uc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOEXEC ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_FAIL ; 
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_RUNNING ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 struct intel_gt* FUNC3 (struct intel_huc*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (struct intel_guc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_guc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_huc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct intel_huc *huc)
{
	struct intel_gt *gt = FUNC3(huc);
	struct intel_guc *guc = &gt->uc.guc;
	int ret;

	FUNC1(FUNC8(huc));

	if (!FUNC10(&huc->fw))
		return -ENOEXEC;

	ret = FUNC4(gt->i915, -ENXIO);
	if (ret)
		goto fail;

	ret = FUNC6(guc,
				 FUNC7(guc, huc->rsa_data));
	if (ret) {
		FUNC0("HuC: GuC did not ack Auth request %d\n", ret);
		goto fail;
	}

	/* Check authentication status, it should be done by now */
	ret = FUNC2(gt->uncore,
					huc->status.reg,
					huc->status.mask,
					huc->status.value,
					2, 50, NULL);
	if (ret) {
		FUNC0("HuC: Firmware not verified %d\n", ret);
		goto fail;
	}

	FUNC9(&huc->fw, INTEL_UC_FIRMWARE_RUNNING);
	return 0;

fail:
	FUNC5(gt->i915, "HuC: Authentication failed %d\n", ret);
	FUNC9(&huc->fw, INTEL_UC_FIRMWARE_FAIL);
	return ret;
}