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
typedef  int /*<<< orphan*/  u32 ;
struct intel_uc_fw {int /*<<< orphan*/  path; int /*<<< orphan*/  type; } ;
struct intel_gt {int /*<<< orphan*/  i915; } ;

/* Variables and functions */
 int ENOEXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_FAIL ; 
 int /*<<< orphan*/  INTEL_UC_FIRMWARE_TRANSFERRED ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uc_fw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uc_fw*,struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uc_fw*,struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_uc_fw*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_uc_fw*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct intel_uc_fw*,struct intel_gt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct intel_uc_fw *uc_fw, struct intel_gt *gt,
		       u32 wopcm_offset, u32 dma_flags)
{
	int err;

	/* make sure the status was cleared the last time we reset the uc */
	FUNC0(FUNC7(uc_fw));

	err = FUNC1(gt->i915, -ENOEXEC);
	if (err)
		return err;

	if (!FUNC6(uc_fw))
		return -ENOEXEC;

	/* Call custom loader */
	FUNC4(uc_fw, gt);
	err = FUNC9(uc_fw, gt, wopcm_offset, dma_flags);
	FUNC5(uc_fw, gt);
	if (err)
		goto fail;

	FUNC3(uc_fw, INTEL_UC_FIRMWARE_TRANSFERRED);
	return 0;

fail:
	FUNC2(gt->i915, "Failed to load %s firmware %s (%d)\n",
			 FUNC8(uc_fw->type), uc_fw->path,
			 err);
	FUNC3(uc_fw, INTEL_UC_FIRMWARE_FAIL);
	return err;
}