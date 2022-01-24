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
struct intel_guc {int /*<<< orphan*/  fw; int /*<<< orphan*/  log; int /*<<< orphan*/  ct; int /*<<< orphan*/  ads_vma; int /*<<< orphan*/  shared_data; } ;
struct intel_gt {TYPE_2__* i915; int /*<<< orphan*/  ggtt; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_guc*) ; 
 int FUNC3 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_guc*) ; 
 struct intel_gt* FUNC5 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct intel_guc*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(struct intel_guc *guc)
{
	struct intel_gt *gt = FUNC5(guc);
	int ret;

	ret = FUNC17(&guc->fw);
	if (ret)
		goto err_fetch;

	ret = FUNC3(guc);
	if (ret)
		goto err_fw;
	FUNC1(!guc->shared_data);

	ret = FUNC12(&guc->log);
	if (ret)
		goto err_shared;

	ret = FUNC7(guc);
	if (ret)
		goto err_log;
	FUNC1(!guc->ads_vma);

	ret = FUNC10(&guc->ct);
	if (ret)
		goto err_ads;

	if (FUNC11(guc)) {
		/*
		 * This is stuff we need to have available at fw load time
		 * if we are planning to enable submission later
		 */
		ret = FUNC14(guc);
		if (ret)
			goto err_ct;
	}

	/* now that everything is perma-pinned, initialize the parameters */
	FUNC2(guc);

	/* We need to notify the guc whenever we change the GGTT */
	FUNC6(gt->ggtt);

	return 0;

err_ct:
	FUNC9(&guc->ct);
err_ads:
	FUNC8(guc);
err_log:
	FUNC13(&guc->log);
err_shared:
	FUNC4(guc);
err_fw:
	FUNC16(&guc->fw);
err_fetch:
	FUNC15(&guc->fw);
	FUNC0(gt->i915->drm.dev, "failed with %d\n", ret);
	return ret;
}