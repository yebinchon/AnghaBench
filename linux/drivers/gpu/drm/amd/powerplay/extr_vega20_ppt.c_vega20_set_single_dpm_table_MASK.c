#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct vega20_single_dpm_table {int count; TYPE_1__* dpm_levels; } ;
struct smu_context {int dummy; } ;
struct TYPE_2__ {int value; int enabled; } ;
typedef  int PPCLK_e ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SMU_MSG_GetDpmFreqByIndex ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct smu_context*,int*) ; 
 int FUNC2 (struct smu_context*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct smu_context *smu,
			    struct vega20_single_dpm_table *single_dpm_table,
			    PPCLK_e clk_id)
{
	int ret = 0;
	uint32_t i, num_of_levels = 0, clk;

	ret = FUNC2(smu,
			SMU_MSG_GetDpmFreqByIndex,
			(clk_id << 16 | 0xFF));
	if (ret) {
		FUNC0("[GetNumOfDpmLevel] failed to get dpm levels!");
		return ret;
	}

	FUNC1(smu, &num_of_levels);
	if (!num_of_levels) {
		FUNC0("[GetNumOfDpmLevel] number of clk levels is invalid!");
		return -EINVAL;
	}

	single_dpm_table->count = num_of_levels;

	for (i = 0; i < num_of_levels; i++) {
		ret = FUNC2(smu,
				SMU_MSG_GetDpmFreqByIndex,
				(clk_id << 16 | i));
		if (ret) {
			FUNC0("[GetDpmFreqByIndex] failed to get dpm freq by index!");
			return ret;
		}
		FUNC1(smu, &clk);
		if (!clk) {
			FUNC0("[GetDpmFreqByIndex] clk value is invalid!");
			return -EINVAL;
		}
		single_dpm_table->dpm_levels[i].value = clk;
		single_dpm_table->dpm_levels[i].enabled = true;
	}
	return 0;
}