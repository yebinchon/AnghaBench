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
struct msm_gpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  REG_A5XX_RBBM_SW_RESET_CMD ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ hang_debug ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct msm_gpu *gpu)
{
	int i;

	FUNC2(gpu);

	for (i = 0; i < 8; i++) {
		FUNC6("CP_SCRATCH_REG%d: %u\n", i,
			FUNC4(gpu, FUNC0(i)));
	}

	if (hang_debug)
		FUNC1(gpu);

	FUNC5(gpu, REG_A5XX_RBBM_SW_RESET_CMD, 1);
	FUNC4(gpu, REG_A5XX_RBBM_SW_RESET_CMD);
	FUNC5(gpu, REG_A5XX_RBBM_SW_RESET_CMD, 0);
	FUNC3(gpu);
}