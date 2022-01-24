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
struct intel_huc {int /*<<< orphan*/  fw; } ;
struct intel_guc {int dummy; } ;
struct intel_uc {struct intel_huc huc; struct intel_guc guc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_huc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uc*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uc*) ; 
 scalar_t__ FUNC6 (struct intel_uc*) ; 

void FUNC7(struct intel_uc *uc)
{
	struct intel_guc *guc = &uc->guc;
	struct intel_huc *huc = &uc->huc;
	int ret;

	if (!FUNC5(uc))
		return;

	/* XXX: GuC submission is unavailable for now */
	FUNC0(FUNC4(uc));

	ret = FUNC1(guc);
	if (ret) {
		FUNC3(&huc->fw);
		return;
	}

	if (FUNC6(uc))
		FUNC2(huc);
}