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
typedef  scalar_t__ uint32_t ;
struct smu_context {int /*<<< orphan*/  pm_enabled; } ;
typedef  enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SMU_MSG_GetDcModeMaxDpmFreq ; 
 int /*<<< orphan*/  SMU_MSG_GetMaxDpmFreq ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct smu_context*,int) ; 
 scalar_t__ FUNC2 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smu_context*,scalar_t__*) ; 
 int FUNC4 (struct smu_context*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct smu_context *smu, uint32_t *clock,
				    enum smu_clk_type clock_select)
{
	int ret = 0;
	int clk_id;

	if (!smu->pm_enabled)
		return ret;

	if ((FUNC2(smu, SMU_MSG_GetDcModeMaxDpmFreq) < 0) ||
	    (FUNC2(smu, SMU_MSG_GetMaxDpmFreq) < 0))
		return 0;

	clk_id = FUNC1(smu, clock_select);
	if (clk_id < 0)
		return -EINVAL;

	ret = FUNC4(smu, SMU_MSG_GetDcModeMaxDpmFreq,
					  clk_id << 16);
	if (ret) {
		FUNC0("[GetMaxSustainableClock] Failed to get max DC clock from SMC!");
		return ret;
	}

	ret = FUNC3(smu, clock);
	if (ret)
		return ret;

	if (*clock != 0)
		return 0;

	/* if DC limit is zero, return AC limit */
	ret = FUNC4(smu, SMU_MSG_GetMaxDpmFreq,
					  clk_id << 16);
	if (ret) {
		FUNC0("[GetMaxSustainableClock] failed to get max AC clock from SMC!");
		return ret;
	}

	ret = FUNC3(smu, clock);

	return ret;
}