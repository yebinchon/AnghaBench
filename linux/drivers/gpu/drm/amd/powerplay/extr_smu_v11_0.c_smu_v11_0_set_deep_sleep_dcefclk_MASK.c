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
 int /*<<< orphan*/  SMU_MSG_SetMinDeepSleepDcefclk ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct smu_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct smu_context *smu, uint32_t clk)
{
	int ret;

	ret = FUNC1(smu,
					  SMU_MSG_SetMinDeepSleepDcefclk, clk);
	if (ret)
		FUNC0("SMU11 attempt to set divider for DCEFCLK Failed!");

	return ret;
}