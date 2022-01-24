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
struct intel_guc {int /*<<< orphan*/  fw; int /*<<< orphan*/  log; int /*<<< orphan*/  ct; } ;
struct intel_gt {int /*<<< orphan*/  ggtt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_guc*) ; 
 struct intel_gt* FUNC1 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct intel_guc *guc)
{
	struct intel_gt *gt = FUNC1(guc);

	if (!FUNC10(&guc->fw))
		return;

	FUNC2(gt->ggtt);

	if (FUNC5(guc))
		FUNC7(guc);

	FUNC4(&guc->ct);

	FUNC3(guc);
	FUNC6(&guc->log);
	FUNC0(guc);
	FUNC9(&guc->fw);
	FUNC8(&guc->fw);
}