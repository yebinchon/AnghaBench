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
struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;
struct TYPE_3__ {int value; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  REG_A5XX_RBBM_CLOCK_CNTL ; 
 int /*<<< orphan*/  REG_A5XX_RBBM_CLOCK_DELAY_GPMU ; 
 int /*<<< orphan*/  REG_A5XX_RBBM_CLOCK_HYST_GPMU ; 
 int /*<<< orphan*/  REG_A5XX_RBBM_ISDB_CNT ; 
 TYPE_1__* a5xx_hwcg ; 
 scalar_t__ FUNC1 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 struct adreno_gpu* FUNC3 (struct msm_gpu*) ; 

void FUNC4(struct msm_gpu *gpu, bool state)
{
	struct adreno_gpu *adreno_gpu = FUNC3(gpu);
	unsigned int i;

	for (i = 0; i < FUNC0(a5xx_hwcg); i++)
		FUNC2(gpu, a5xx_hwcg[i].offset,
			state ? a5xx_hwcg[i].value : 0);

	if (FUNC1(adreno_gpu)) {
		FUNC2(gpu, REG_A5XX_RBBM_CLOCK_DELAY_GPMU, state ? 0x00000770 : 0);
		FUNC2(gpu, REG_A5XX_RBBM_CLOCK_HYST_GPMU, state ? 0x00000004 : 0);
	}

	FUNC2(gpu, REG_A5XX_RBBM_CLOCK_CNTL, state ? 0xAAA8AA00 : 0);
	FUNC2(gpu, REG_A5XX_RBBM_ISDB_CNT, state ? 0x182 : 0x180);
}