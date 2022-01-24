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
struct msm_gpu {int /*<<< orphan*/  aspace; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gpu {scalar_t__ sqe_bo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct a6xx_gpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct a6xx_gpu*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct a6xx_gpu* FUNC5 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC6 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC7(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC6(gpu);
	struct a6xx_gpu *a6xx_gpu = FUNC5(adreno_gpu);

	if (a6xx_gpu->sqe_bo) {
		FUNC4(a6xx_gpu->sqe_bo, gpu->aspace);
		FUNC2(a6xx_gpu->sqe_bo);
	}

	FUNC0(a6xx_gpu);

	FUNC1(adreno_gpu);
	FUNC3(a6xx_gpu);
}