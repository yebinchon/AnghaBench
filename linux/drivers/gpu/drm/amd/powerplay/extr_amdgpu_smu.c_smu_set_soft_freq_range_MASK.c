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
 int /*<<< orphan*/  SMU_MSG_SetSoftMaxByFreq ; 
 int /*<<< orphan*/  SMU_MSG_SetSoftMinByFreq ; 
 int /*<<< orphan*/  FUNC0 (struct smu_context*,int) ; 
 int FUNC1 (struct smu_context*,int) ; 
 int FUNC2 (struct smu_context*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct smu_context *smu, enum smu_clk_type clk_type,
			    uint32_t min, uint32_t max)
{
	int ret = 0, clk_id = 0;
	uint32_t param;

	if (min <= 0 && max <= 0)
		return -EINVAL;

	if (!FUNC0(smu, clk_type))
		return 0;

	clk_id = FUNC1(smu, clk_type);
	if (clk_id < 0)
		return clk_id;

	if (max > 0) {
		param = (uint32_t)((clk_id << 16) | (max & 0xffff));
		ret = FUNC2(smu, SMU_MSG_SetSoftMaxByFreq,
						  param);
		if (ret)
			return ret;
	}

	if (min > 0) {
		param = (uint32_t)((clk_id << 16) | (min & 0xffff));
		ret = FUNC2(smu, SMU_MSG_SetSoftMinByFreq,
						  param);
		if (ret)
			return ret;
	}


	return ret;
}