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
typedef  int u32 ;
struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gmu {int dummy; } ;
struct a6xx_gpu {struct a6xx_gmu gmu; } ;
struct TYPE_3__ {int value; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  REG_A6XX_GPU_GMU_GX_SPTPRAC_CLOCK_CONTROL ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_CLOCK_CNTL ; 
 TYPE_1__* a6xx_hwcg ; 
 int /*<<< orphan*/  FUNC1 (struct a6xx_gmu*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 struct a6xx_gpu* FUNC4 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC5 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC6(struct msm_gpu *gpu, bool state)
{
	struct adreno_gpu *adreno_gpu = FUNC5(gpu);
	struct a6xx_gpu *a6xx_gpu = FUNC4(adreno_gpu);
	struct a6xx_gmu *gmu = &a6xx_gpu->gmu;
	unsigned int i;
	u32 val;

	val = FUNC2(gpu, REG_A6XX_RBBM_CLOCK_CNTL);

	/* Don't re-program the registers if they are already correct */
	if ((!state && !val) || (state && (val == 0x8aa8aa02)))
		return;

	/* Disable SP clock before programming HWCG registers */
	FUNC1(gmu, REG_A6XX_GPU_GMU_GX_SPTPRAC_CLOCK_CONTROL, 1, 0);

	for (i = 0; i < FUNC0(a6xx_hwcg); i++)
		FUNC3(gpu, a6xx_hwcg[i].offset,
			state ? a6xx_hwcg[i].value : 0);

	/* Enable SP clock */
	FUNC1(gmu, REG_A6XX_GPU_GMU_GX_SPTPRAC_CLOCK_CONTROL, 0, 1);

	FUNC3(gpu, REG_A6XX_RBBM_CLOCK_CNTL, state ? 0x8aa8aa02 : 0);
}