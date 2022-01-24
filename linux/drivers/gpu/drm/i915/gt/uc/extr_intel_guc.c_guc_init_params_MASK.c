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
struct intel_guc {int /*<<< orphan*/ * params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 size_t GUC_CTL_ADS ; 
 size_t GUC_CTL_CTXINFO ; 
 size_t GUC_CTL_DEBUG ; 
 size_t GUC_CTL_FEATURE ; 
 size_t GUC_CTL_LOG_PARAMS ; 
 int GUC_CTL_MAX_DWORDS ; 
 int /*<<< orphan*/  FUNC2 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_guc*) ; 

__attribute__((used)) static void FUNC7(struct intel_guc *guc)
{
	u32 *params = guc->params;
	int i;

	FUNC0(sizeof(guc->params) != GUC_CTL_MAX_DWORDS * sizeof(u32));

	params[GUC_CTL_CTXINFO] = FUNC3(guc);
	params[GUC_CTL_LOG_PARAMS] = FUNC6(guc);
	params[GUC_CTL_FEATURE] = FUNC5(guc);
	params[GUC_CTL_DEBUG] = FUNC4(guc);
	params[GUC_CTL_ADS] = FUNC2(guc);

	for (i = 0; i < GUC_CTL_MAX_DWORDS; i++)
		FUNC1("param[%2d] = %#x\n", i, params[i]);
}