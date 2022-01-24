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
struct intel_gt {int /*<<< orphan*/  uncore; int /*<<< orphan*/  i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GEN11_GRDOM_GUC ; 
 int /*<<< orphan*/  GEN9_GRDOM_GUC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct intel_gt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct intel_gt *gt)
{
	u32 guc_domain =
		FUNC2(gt->i915) >= 11 ? GEN11_GRDOM_GUC : GEN9_GRDOM_GUC;
	int ret;

	FUNC0(!FUNC1(gt->i915));

	FUNC4(gt->uncore, FORCEWAKE_ALL);
	ret = FUNC3(gt, guc_domain);
	FUNC5(gt->uncore, FORCEWAKE_ALL);

	return ret;
}