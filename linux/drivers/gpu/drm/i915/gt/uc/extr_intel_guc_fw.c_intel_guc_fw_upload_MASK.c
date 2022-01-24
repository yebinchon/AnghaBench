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
struct intel_uncore {int dummy; } ;
struct intel_guc {int /*<<< orphan*/  fw; } ;
struct intel_gt {struct intel_uncore* uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_FAIL ; 
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_RUNNING ; 
 int /*<<< orphan*/  UOS_MOVE ; 
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*) ; 
 struct intel_gt* FUNC1 (struct intel_guc*) ; 
 int FUNC2 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct intel_gt*,int,int /*<<< orphan*/ ) ; 

int FUNC6(struct intel_guc *guc)
{
	struct intel_gt *gt = FUNC1(guc);
	struct intel_uncore *uncore = gt->uncore;
	int ret;

	FUNC0(uncore);

	/*
	 * Note that GuC needs the CSS header plus uKernel code to be copied
	 * by the DMA engine in one operation, whereas the RSA signature is
	 * loaded via MMIO.
	 */
	FUNC3(&guc->fw, uncore);

	/*
	 * Current uCode expects the code to be loaded at 8k; locations below
	 * this are used for the stack.
	 */
	ret = FUNC5(&guc->fw, gt, 0x2000, UOS_MOVE);
	if (ret)
		goto out;

	ret = FUNC2(uncore);
	if (ret)
		goto out;

	FUNC4(&guc->fw, INTEL_UC_FIRMWARE_RUNNING);
	return 0;

out:
	FUNC4(&guc->fw, INTEL_UC_FIRMWARE_FAIL);
	return ret;
}