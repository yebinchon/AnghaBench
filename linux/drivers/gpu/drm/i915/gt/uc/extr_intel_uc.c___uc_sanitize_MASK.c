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
struct intel_huc {int dummy; } ;
struct intel_guc {int dummy; } ;
struct intel_uc {struct intel_huc huc; struct intel_guc guc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct intel_uc*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_huc*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uc*) ; 

__attribute__((used)) static int FUNC5(struct intel_uc *uc)
{
	struct intel_guc *guc = &uc->guc;
	struct intel_huc *huc = &uc->huc;

	FUNC0(!FUNC4(uc));

	FUNC3(huc);
	FUNC2(guc);

	return FUNC1(uc);
}