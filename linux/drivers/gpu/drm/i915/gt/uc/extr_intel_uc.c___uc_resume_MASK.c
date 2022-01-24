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
struct intel_guc {int dummy; } ;
struct intel_uc {struct intel_guc guc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_guc*) ; 
 int FUNC5 (struct intel_guc*) ; 

__attribute__((used)) static int FUNC6(struct intel_uc *uc, bool enable_communication)
{
	struct intel_guc *guc = &uc->guc;
	int err;

	if (!FUNC4(guc))
		return 0;

	/* Make sure we enable communication if and only if it's disabled */
	FUNC1(enable_communication == FUNC2(guc));

	if (enable_communication)
		FUNC3(guc);

	err = FUNC5(guc);
	if (err) {
		FUNC0("Failed to resume GuC, err=%d", err);
		return err;
	}

	return 0;
}