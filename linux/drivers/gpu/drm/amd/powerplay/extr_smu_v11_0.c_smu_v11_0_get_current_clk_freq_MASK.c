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
typedef  int uint32_t ;
struct smu_context {int dummy; } ;
typedef  enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;

/* Variables and functions */
 int EINVAL ; 
 int SMU_CLK_COUNT ; 
 int /*<<< orphan*/  SMU_MSG_GetDpmClockFreq ; 
 int FUNC0 (struct smu_context*,int) ; 
 int FUNC1 (struct smu_context*,int,int*) ; 
 scalar_t__ FUNC2 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smu_context*,int*) ; 
 int FUNC4 (struct smu_context*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct smu_context *smu,
					  enum smu_clk_type clk_id,
					  uint32_t *value)
{
	int ret = 0;
	uint32_t freq = 0;
	int asic_clk_id;

	if (clk_id >= SMU_CLK_COUNT || !value)
		return -EINVAL;

	asic_clk_id = FUNC0(smu, clk_id);
	if (asic_clk_id < 0)
		return -EINVAL;

	/* if don't has GetDpmClockFreq Message, try get current clock by SmuMetrics_t */
	if (FUNC2(smu, SMU_MSG_GetDpmClockFreq) < 0)
		ret =  FUNC1(smu, clk_id, &freq);
	else {
		ret = FUNC4(smu, SMU_MSG_GetDpmClockFreq,
						  (asic_clk_id << 16));
		if (ret)
			return ret;

		ret = FUNC3(smu, &freq);
		if (ret)
			return ret;
	}

	freq *= 100;
	*value = freq;

	return ret;
}