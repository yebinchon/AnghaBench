#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct msm_gpu {TYPE_1__* funcs; TYPE_2__* pdev; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gpu {int /*<<< orphan*/  gmu; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* pm_resume ) (struct msm_gpu*) ;int /*<<< orphan*/  (* pm_suspend ) (struct msm_gpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  REG_A6XX_GMU_GMU_PWR_COL_KEEPALIVE ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ hang_debug ; 
 int /*<<< orphan*/  FUNC6 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct msm_gpu*) ; 
 struct a6xx_gpu* FUNC9 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC10 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC11(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC10(gpu);
	struct a6xx_gpu *a6xx_gpu = FUNC9(adreno_gpu);
	int i;

	FUNC3(gpu);

	for (i = 0; i < 8; i++)
		FUNC0(&gpu->pdev->dev, "CP_SCRATCH_REG%d: %u\n", i,
			FUNC5(gpu, FUNC1(i)));

	if (hang_debug)
		FUNC2(gpu);

	/*
	 * Turn off keep alive that might have been enabled by the hang
	 * interrupt
	 */
	FUNC4(&a6xx_gpu->gmu, REG_A6XX_GMU_GMU_PWR_COL_KEEPALIVE, 0);

	gpu->funcs->pm_suspend(gpu);
	gpu->funcs->pm_resume(gpu);

	FUNC6(gpu);
}