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
struct smu_context {int /*<<< orphan*/  mutex; scalar_t__ support_power_containment; int /*<<< orphan*/  adev; } ;
struct smu_clock_info {int /*<<< orphan*/  min_eng_clk; int /*<<< orphan*/  max_eng_clk; int /*<<< orphan*/  max_bus_bandwidth; int /*<<< orphan*/  min_bus_bandwidth; int /*<<< orphan*/  max_mem_clk; int /*<<< orphan*/  min_mem_clk; } ;
struct amd_pp_simple_clock_info {scalar_t__ level; int /*<<< orphan*/  member_0; } ;
struct amd_pp_clock_info {scalar_t__ max_clocks_state; int /*<<< orphan*/  min_engine_clock_in_sr; int /*<<< orphan*/  max_engine_clock_in_sr; int /*<<< orphan*/  max_bus_bandwidth; int /*<<< orphan*/  min_bus_bandwidth; int /*<<< orphan*/  max_memory_clock; int /*<<< orphan*/  min_memory_clock; int /*<<< orphan*/  max_engine_clock; int /*<<< orphan*/  min_engine_clock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PERF_LEVEL_ACTIVITY ; 
 int /*<<< orphan*/  PERF_LEVEL_POWER_CONTAINMENT ; 
 scalar_t__ PP_DAL_POWERLEVEL_7 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct smu_context*,struct smu_clock_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smu_context*,struct smu_clock_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct smu_context*,struct amd_pp_simple_clock_info*) ; 

int FUNC7(struct smu_context *smu,
			   struct amd_pp_clock_info *clocks)
{
	struct amd_pp_simple_clock_info simple_clocks = {0};
	struct smu_clock_info hw_clocks;
	int ret = 0;

	if (!FUNC0(smu->adev))
		return -EINVAL;

	FUNC1(&smu->mutex);

	FUNC6(smu, &simple_clocks);

	if (smu->support_power_containment)
		ret = FUNC4(smu, &hw_clocks,
					 PERF_LEVEL_POWER_CONTAINMENT);
	else
		ret = FUNC4(smu, &hw_clocks, PERF_LEVEL_ACTIVITY);

	if (ret) {
		FUNC3("Error in smu_get_clock_info\n");
		goto failed;
	}

	clocks->min_engine_clock = hw_clocks.min_eng_clk;
	clocks->max_engine_clock = hw_clocks.max_eng_clk;
	clocks->min_memory_clock = hw_clocks.min_mem_clk;
	clocks->max_memory_clock = hw_clocks.max_mem_clk;
	clocks->min_bus_bandwidth = hw_clocks.min_bus_bandwidth;
	clocks->max_bus_bandwidth = hw_clocks.max_bus_bandwidth;
	clocks->max_engine_clock_in_sr = hw_clocks.max_eng_clk;
	clocks->min_engine_clock_in_sr = hw_clocks.min_eng_clk;

        if (simple_clocks.level == 0)
                clocks->max_clocks_state = PP_DAL_POWERLEVEL_7;
        else
                clocks->max_clocks_state = simple_clocks.level;

        if (!FUNC5(smu, &hw_clocks)) {
                clocks->max_engine_clock_in_sr = hw_clocks.max_eng_clk;
                clocks->min_engine_clock_in_sr = hw_clocks.min_eng_clk;
        }

failed:
	FUNC2(&smu->mutex);
	return ret;
}