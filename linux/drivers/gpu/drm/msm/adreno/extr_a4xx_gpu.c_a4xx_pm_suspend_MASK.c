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
struct adreno_gpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_A4XX_RBBM_POWER_CNTL_IP ; 
 scalar_t__ FUNC0 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct msm_gpu*) ; 
 struct adreno_gpu* FUNC3 (struct msm_gpu*) ; 

__attribute__((used)) static int FUNC4(struct msm_gpu *gpu) {
	struct adreno_gpu *adreno_gpu = FUNC3(gpu);
	int ret;

	ret = FUNC2(gpu);
	if (ret)
		return ret;

	if (FUNC0(adreno_gpu)) {
		/* Set the default register values; set SW_COLLAPSE to 1 */
		FUNC1(gpu, REG_A4XX_RBBM_POWER_CNTL_IP, 0x778001);
	}
	return 0;
}