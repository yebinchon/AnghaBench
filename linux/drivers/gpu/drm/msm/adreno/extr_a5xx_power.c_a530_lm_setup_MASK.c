#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct msm_gpu {int fast_rate; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {int lm_leakage; } ;
struct TYPE_3__ {int value; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGC_INIT_MSG_MAGIC ; 
 int AGC_INIT_MSG_VALUE ; 
 int /*<<< orphan*/  AGC_MSG_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AGC_MSG_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  AGC_MSG_STATE ; 
 int AGC_POWER_CONFIG_PRODUCTION_ID ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  REG_A5XX_GDPM_CONFIG1 ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_BASE_LEAKAGE ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_BEC_ENABLE ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_DELTA_TEMP_THRESHOLD ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_GPMU_PWR_THRESHOLD ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_GPMU_VOLTAGE ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_TEMP_SENSOR_CONFIG ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_TEMP_SENSOR_ID ; 
 int FUNC2 (struct msm_gpu*,int) ; 
 TYPE_1__* a5xx_sequence_regs ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 struct a5xx_gpu* FUNC4 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC5 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC6(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC5(gpu);
	struct a5xx_gpu *a5xx_gpu = FUNC4(adreno_gpu);
	unsigned int i;

	/* Write the block of sequence registers */
	for (i = 0; i < FUNC1(a5xx_sequence_regs); i++)
		FUNC3(gpu, a5xx_sequence_regs[i].reg,
			a5xx_sequence_regs[i].value);

	/* Hard code the A530 GPU thermal sensor ID for the GPMU */
	FUNC3(gpu, REG_A5XX_GPMU_TEMP_SENSOR_ID, 0x60007);
	FUNC3(gpu, REG_A5XX_GPMU_DELTA_TEMP_THRESHOLD, 0x01);
	FUNC3(gpu, REG_A5XX_GPMU_TEMP_SENSOR_CONFIG, 0x01);

	/* Until we get clock scaling 0 is always the active power level */
	FUNC3(gpu, REG_A5XX_GPMU_GPMU_VOLTAGE, 0x80000000 | 0);

	FUNC3(gpu, REG_A5XX_GPMU_BASE_LEAKAGE, a5xx_gpu->lm_leakage);

	/* The threshold is fixed at 6000 for A530 */
	FUNC3(gpu, REG_A5XX_GPMU_GPMU_PWR_THRESHOLD, 0x80000000 | 6000);

	FUNC3(gpu, REG_A5XX_GPMU_BEC_ENABLE, 0x10001FFF);
	FUNC3(gpu, REG_A5XX_GDPM_CONFIG1, 0x00201FF1);

	/* Write the voltage table */
	FUNC3(gpu, REG_A5XX_GPMU_BEC_ENABLE, 0x10001FFF);
	FUNC3(gpu, REG_A5XX_GDPM_CONFIG1, 0x201FF1);

	FUNC3(gpu, AGC_MSG_STATE, 1);
	FUNC3(gpu, AGC_MSG_COMMAND, AGC_POWER_CONFIG_PRODUCTION_ID);

	/* Write the max power - hard coded to 5448 for A530 */
	FUNC3(gpu, FUNC0(0), 5448);
	FUNC3(gpu, FUNC0(1), 1);

	/*
	 * For now just write the one voltage level - we will do more when we
	 * can do scaling
	 */
	FUNC3(gpu, FUNC0(2), FUNC2(gpu, gpu->fast_rate));
	FUNC3(gpu, FUNC0(3), gpu->fast_rate / 1000000);

	FUNC3(gpu, AGC_MSG_PAYLOAD_SIZE, 4 * sizeof(uint32_t));
	FUNC3(gpu, AGC_INIT_MSG_MAGIC, AGC_INIT_MSG_VALUE);
}