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
struct a6xx_gpu_state {int nr_gmu_registers; int /*<<< orphan*/ * gmu_registers; } ;
struct a6xx_gpu {int /*<<< orphan*/  gmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_A6XX_GMU_AO_AHB_FENCE_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct msm_gpu*,struct a6xx_gpu_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * a6xx_gmu_reglist ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct a6xx_gpu_state*,int,int) ; 
 struct a6xx_gpu* FUNC4 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC5 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC6(struct msm_gpu *gpu,
		struct a6xx_gpu_state *a6xx_state)
{
	struct adreno_gpu *adreno_gpu = FUNC5(gpu);
	struct a6xx_gpu *a6xx_gpu = FUNC4(adreno_gpu);

	a6xx_state->gmu_registers = FUNC3(a6xx_state,
		2, sizeof(*a6xx_state->gmu_registers));

	if (!a6xx_state->gmu_registers)
		return;

	a6xx_state->nr_gmu_registers = 2;

	/* Get the CX GMU registers from AHB */
	FUNC0(gpu, a6xx_state, &a6xx_gmu_reglist[0],
		&a6xx_state->gmu_registers[0]);

	if (!FUNC1(&a6xx_gpu->gmu))
		return;

	/* Set the fence to ALLOW mode so we can access the registers */
	FUNC2(gpu, REG_A6XX_GMU_AO_AHB_FENCE_CTRL, 0);

	FUNC0(gpu, a6xx_state, &a6xx_gmu_reglist[1],
		&a6xx_state->gmu_registers[1]);
}