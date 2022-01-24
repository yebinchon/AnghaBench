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
typedef  int u32 ;
struct intel_uc {int dummy; } ;
struct intel_gt {int /*<<< orphan*/  uncore; int /*<<< orphan*/  i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  ENXIO ; 
 int GS_MIA_IN_RESET ; 
 int /*<<< orphan*/  GUC_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct intel_gt*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct intel_gt* FUNC5 (struct intel_uc*) ; 

__attribute__((used)) static int FUNC6(struct intel_uc *uc)
{
	struct intel_gt *gt = FUNC5(uc);
	int ret;
	u32 guc_status;

	ret = FUNC2(gt->i915, -ENXIO);
	if (ret)
		return ret;

	ret = FUNC3(gt);
	if (ret) {
		FUNC0("Failed to reset GuC, ret = %d\n", ret);
		return ret;
	}

	guc_status = FUNC4(gt->uncore, GUC_STATUS);
	FUNC1(!(guc_status & GS_MIA_IN_RESET),
	     "GuC status: 0x%x, MIA core expected to be in reset\n",
	     guc_status);

	return ret;
}