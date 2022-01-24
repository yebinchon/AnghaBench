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
 scalar_t__ REG_A3XX_RBBM_SW_RESET_CMD ; 
 scalar_t__ REG_AXXX_CP_SCRATCH_REG0 ; 
 int /*<<< orphan*/  FUNC0 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gpu*,scalar_t__,int) ; 
 scalar_t__ hang_debug ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct msm_gpu *gpu)
{
	int i;

	FUNC1(gpu);

	for (i = 0; i < 8; i++) {
		FUNC5("CP_SCRATCH_REG%d: %u\n", i,
			FUNC3(gpu, REG_AXXX_CP_SCRATCH_REG0 + i));
	}

	/* dump registers before resetting gpu, if enabled: */
	if (hang_debug)
		FUNC0(gpu);

	FUNC4(gpu, REG_A3XX_RBBM_SW_RESET_CMD, 1);
	FUNC3(gpu, REG_A3XX_RBBM_SW_RESET_CMD);
	FUNC4(gpu, REG_A3XX_RBBM_SW_RESET_CMD, 0);
	FUNC2(gpu);
}