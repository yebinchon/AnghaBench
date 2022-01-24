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
struct intel_uc {int /*<<< orphan*/  huc; struct intel_guc guc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_uc*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uc*) ; 
 scalar_t__ FUNC4 (struct intel_uc*) ; 

void FUNC5(struct intel_uc *uc)
{
	struct intel_guc *guc = &uc->guc;

	if (!FUNC3(uc))
		return;

	if (FUNC4(uc))
		FUNC2(&uc->huc);

	FUNC1(guc);

	FUNC0(uc);
}