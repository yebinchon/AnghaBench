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
 unsigned int A4XX_RBBM_POWER_CNTL_IP_SP_TP_PWR_ON ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_POWER_CNTL_IP ; 
 int /*<<< orphan*/  REG_A4XX_RBBM_POWER_STATUS ; 
 scalar_t__ FUNC0 (struct adreno_gpu*) ; 
 unsigned int FUNC1 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct msm_gpu*) ; 
 struct adreno_gpu* FUNC4 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct msm_gpu *gpu) {
	struct adreno_gpu *adreno_gpu = FUNC4(gpu);
	int ret;

	ret = FUNC3(gpu);
	if (ret)
		return ret;

	if (FUNC0(adreno_gpu)) {
		unsigned int reg;
		/* Set the default register values; set SW_COLLAPSE to 0 */
		FUNC2(gpu, REG_A4XX_RBBM_POWER_CNTL_IP, 0x778000);
		do {
			FUNC5(5);
			reg = FUNC1(gpu, REG_A4XX_RBBM_POWER_STATUS);
		} while (!(reg & A4XX_RBBM_POWER_CNTL_IP_SP_TP_PWR_ON));
	}
	return 0;
}