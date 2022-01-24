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
 int /*<<< orphan*/  REG_A5XX_GDPM_INT_EN ; 
 int /*<<< orphan*/  REG_A5XX_GDPM_INT_MASK ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_CLOCK_THROTTLE_CTRL ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_GPMU_VOLTAGE_INTR_EN_MASK ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_TEMP_THRESHOLD_INTR_EN_MASK ; 
 int /*<<< orphan*/  REG_A5XX_GPMU_THROTTLE_UNMASK_FORCE_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 struct adreno_gpu* FUNC2 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC3(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC2(gpu);

	/* This init sequence only applies to A530 */
	if (!FUNC0(adreno_gpu))
		return;

	FUNC1(gpu, REG_A5XX_GDPM_INT_MASK, 0x0);
	FUNC1(gpu, REG_A5XX_GDPM_INT_EN, 0x0A);
	FUNC1(gpu, REG_A5XX_GPMU_GPMU_VOLTAGE_INTR_EN_MASK, 0x01);
	FUNC1(gpu, REG_A5XX_GPMU_TEMP_THRESHOLD_INTR_EN_MASK, 0x50000);
	FUNC1(gpu, REG_A5XX_GPMU_THROTTLE_UNMASK_FORCE_CTRL, 0x30000);

	FUNC1(gpu, REG_A5XX_GPMU_CLOCK_THROTTLE_CTRL, 0x011);
}