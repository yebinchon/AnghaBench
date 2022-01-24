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
typedef  int /*<<< orphan*/  uint32_t ;
struct smu_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMU_FEATURE_DPM_UCLK_BIT ; 
 int /*<<< orphan*/  SMU_MSG_NumOfDisplays ; 
 int /*<<< orphan*/  SMU_UCLK ; 
 scalar_t__ FUNC0 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct smu_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct smu_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smu_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct smu_context *smu)
{
	int ret = 0;
	uint32_t max_freq = 0;

	ret = FUNC2(smu, SMU_MSG_NumOfDisplays, 0);
	if (ret)
		return ret;

	if (FUNC0(smu, SMU_FEATURE_DPM_UCLK_BIT)) {
		ret = FUNC1(smu, SMU_UCLK, NULL, &max_freq);
		if (ret)
			return ret;
		ret = FUNC3(smu, SMU_UCLK, 0, max_freq);
		if (ret)
			return ret;
	}

	return ret;
}