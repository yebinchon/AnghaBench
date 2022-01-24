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
struct msm_gpu {int /*<<< orphan*/  aspace; int /*<<< orphan*/  name; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {scalar_t__ gpmu_bo; scalar_t__ pfp_bo; scalar_t__ pm4_bo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct a5xx_gpu*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct a5xx_gpu* FUNC6 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC7 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC8(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC7(gpu);
	struct a5xx_gpu *a5xx_gpu = FUNC6(adreno_gpu);

	FUNC0("%s", gpu->name);

	FUNC1(gpu);

	if (a5xx_gpu->pm4_bo) {
		FUNC5(a5xx_gpu->pm4_bo, gpu->aspace);
		FUNC3(a5xx_gpu->pm4_bo);
	}

	if (a5xx_gpu->pfp_bo) {
		FUNC5(a5xx_gpu->pfp_bo, gpu->aspace);
		FUNC3(a5xx_gpu->pfp_bo);
	}

	if (a5xx_gpu->gpmu_bo) {
		FUNC5(a5xx_gpu->gpmu_bo, gpu->aspace);
		FUNC3(a5xx_gpu->gpmu_bo);
	}

	FUNC2(adreno_gpu);
	FUNC4(a5xx_gpu);
}