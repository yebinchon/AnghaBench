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
struct msm_gpu {TYPE_1__* dev; } ;
struct adreno_gpu {int /*<<< orphan*/ * fw; } ;
struct a5xx_gpu {int /*<<< orphan*/  pfp_iova; int /*<<< orphan*/  pm4_iova; int /*<<< orphan*/ * pfp_bo; int /*<<< orphan*/ * pm4_bo; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t ADRENO_FW_PFP ; 
 size_t ADRENO_FW_PM4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REG_A5XX_CP_ME_INSTR_BASE_HI ; 
 int /*<<< orphan*/  REG_A5XX_CP_ME_INSTR_BASE_LO ; 
 int /*<<< orphan*/  REG_A5XX_CP_PFP_INSTR_BASE_HI ; 
 int /*<<< orphan*/  REG_A5XX_CP_PFP_INSTR_BASE_LO ; 
 void* FUNC3 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct a5xx_gpu* FUNC6 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC7 (struct msm_gpu*) ; 

__attribute__((used)) static int FUNC8(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC7(gpu);
	struct a5xx_gpu *a5xx_gpu = FUNC6(adreno_gpu);
	int ret;

	if (!a5xx_gpu->pm4_bo) {
		a5xx_gpu->pm4_bo = FUNC3(gpu,
			adreno_gpu->fw[ADRENO_FW_PM4], &a5xx_gpu->pm4_iova);


		if (FUNC1(a5xx_gpu->pm4_bo)) {
			ret = FUNC2(a5xx_gpu->pm4_bo);
			a5xx_gpu->pm4_bo = NULL;
			FUNC0(gpu->dev->dev, "could not allocate PM4: %d\n",
				ret);
			return ret;
		}

		FUNC5(a5xx_gpu->pm4_bo, "pm4fw");
	}

	if (!a5xx_gpu->pfp_bo) {
		a5xx_gpu->pfp_bo = FUNC3(gpu,
			adreno_gpu->fw[ADRENO_FW_PFP], &a5xx_gpu->pfp_iova);

		if (FUNC1(a5xx_gpu->pfp_bo)) {
			ret = FUNC2(a5xx_gpu->pfp_bo);
			a5xx_gpu->pfp_bo = NULL;
			FUNC0(gpu->dev->dev, "could not allocate PFP: %d\n",
				ret);
			return ret;
		}

		FUNC5(a5xx_gpu->pfp_bo, "pfpfw");
	}

	FUNC4(gpu, REG_A5XX_CP_ME_INSTR_BASE_LO,
		REG_A5XX_CP_ME_INSTR_BASE_HI, a5xx_gpu->pm4_iova);

	FUNC4(gpu, REG_A5XX_CP_PFP_INSTR_BASE_LO,
		REG_A5XX_CP_PFP_INSTR_BASE_HI, a5xx_gpu->pfp_iova);

	return 0;
}