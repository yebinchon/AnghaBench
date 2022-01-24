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
struct msm_gpu {TYPE_1__* pdev; } ;
struct adreno_gpu {int /*<<< orphan*/ * fw; } ;
struct a6xx_gpu {int /*<<< orphan*/  sqe_iova; int /*<<< orphan*/ * sqe_bo; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t ADRENO_FW_SQE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REG_A6XX_CP_SQE_INSTR_BASE_HI ; 
 int /*<<< orphan*/  REG_A6XX_CP_SQE_INSTR_BASE_LO ; 
 int /*<<< orphan*/ * FUNC3 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct a6xx_gpu* FUNC6 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC7 (struct msm_gpu*) ; 

__attribute__((used)) static int FUNC8(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC7(gpu);
	struct a6xx_gpu *a6xx_gpu = FUNC6(adreno_gpu);

	if (!a6xx_gpu->sqe_bo) {
		a6xx_gpu->sqe_bo = FUNC3(gpu,
			adreno_gpu->fw[ADRENO_FW_SQE], &a6xx_gpu->sqe_iova);

		if (FUNC1(a6xx_gpu->sqe_bo)) {
			int ret = FUNC2(a6xx_gpu->sqe_bo);

			a6xx_gpu->sqe_bo = NULL;
			FUNC0(&gpu->pdev->dev,
				"Could not allocate SQE ucode: %d\n", ret);

			return ret;
		}

		FUNC5(a6xx_gpu->sqe_bo, "sqefw");
	}

	FUNC4(gpu, REG_A6XX_CP_SQE_INSTR_BASE_LO,
		REG_A6XX_CP_SQE_INSTR_BASE_HI, a6xx_gpu->sqe_iova);

	return 0;
}