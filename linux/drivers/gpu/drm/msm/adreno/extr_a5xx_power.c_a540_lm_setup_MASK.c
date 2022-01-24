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
typedef  int u32 ;
struct msm_gpu {int fast_rate; } ;
struct TYPE_2__ {int patchid; } ;
struct adreno_gpu {TYPE_1__ rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGC_INIT_MSG_MAGIC ; 
 int AGC_INIT_MSG_VALUE ; 
 int AGC_LEVEL_CONFIG ; 
 int AGC_LM_CONFIG ; 
 int AGC_LM_CONFIG_BCL_DISABLED ; 
 int AGC_LM_CONFIG_GPU_VERSION_SHIFT ; 
 int AGC_LM_CONFIG_THROTTLE_DISABLE ; 
 int /*<<< orphan*/  AGC_MSG_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AGC_MSG_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  AGC_MSG_STATE ; 
 int AGC_POWER_CONFIG_PRODUCTION_ID ; 
 int LEVEL_CONFIG ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_GPMU_PWR_THRESHOLD ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_GPMU_VOLTAGE ; 
 int FUNC2 (struct msm_gpu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 struct adreno_gpu* FUNC4 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC5(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC4(gpu);
	u32 config;

	/* The battery current limiter isn't enabled for A540 */
	config = AGC_LM_CONFIG_BCL_DISABLED;
	config |= adreno_gpu->rev.patchid << AGC_LM_CONFIG_GPU_VERSION_SHIFT;

	/* For now disable GPMU side throttling */
	config |= AGC_LM_CONFIG_THROTTLE_DISABLE;

	/* Until we get clock scaling 0 is always the active power level */
	FUNC3(gpu, REG_A5XX_GPMU_GPMU_VOLTAGE, 0x80000000 | 0);

	/* Fixed at 6000 for now */
	FUNC3(gpu, REG_A5XX_GPMU_GPMU_PWR_THRESHOLD, 0x80000000 | 6000);

	FUNC3(gpu, AGC_MSG_STATE, 0x80000001);
	FUNC3(gpu, AGC_MSG_COMMAND, AGC_POWER_CONFIG_PRODUCTION_ID);

	FUNC3(gpu, FUNC0(0), 5448);
	FUNC3(gpu, FUNC0(1), 1);

	FUNC3(gpu, FUNC0(2), FUNC2(gpu, gpu->fast_rate));
	FUNC3(gpu, FUNC0(3), gpu->fast_rate / 1000000);

	FUNC3(gpu, FUNC0(AGC_LM_CONFIG), config);
	FUNC3(gpu, FUNC0(AGC_LEVEL_CONFIG), LEVEL_CONFIG);
	FUNC3(gpu, AGC_MSG_PAYLOAD_SIZE,
	FUNC1(AGC_LEVEL_CONFIG + 1));

	FUNC3(gpu, AGC_INIT_MSG_MAGIC, AGC_INIT_MSG_VALUE);
}