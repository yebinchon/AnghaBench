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
 int /*<<< orphan*/  FUNC1 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_guc*) ; 
 int FUNC3 (struct intel_guc*) ; 

void FUNC4(struct intel_uc *uc)
{
	struct intel_guc *guc = &uc->guc;
	int err;

	if (!FUNC2(guc))
		return;

	err = FUNC3(guc);
	if (err)
		FUNC0("Failed to suspend GuC, err=%d", err);

	FUNC1(guc);
}