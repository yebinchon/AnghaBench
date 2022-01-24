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
struct a6xx_gpu {int /*<<< orphan*/  gmu; } ;

/* Variables and functions */
 int A6XX_RBBM_INT_0_MASK_RBBM_HANG_DETECT ; 
 int A6XX_RBBM_STATUS_CP_AHB_BUSY_CX_MASTER ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_INT_0_STATUS ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 struct a6xx_gpu* FUNC2 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC3 (struct msm_gpu*) ; 

__attribute__((used)) static inline bool FUNC4(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC3(gpu);
	struct a6xx_gpu *a6xx_gpu = FUNC2(adreno_gpu);

	/* Check that the GMU is idle */
	if (!FUNC0(&a6xx_gpu->gmu))
		return false;

	/* Check tha the CX master is idle */
	if (FUNC1(gpu, REG_A6XX_RBBM_STATUS) &
			~A6XX_RBBM_STATUS_CP_AHB_BUSY_CX_MASTER)
		return false;

	return !(FUNC1(gpu, REG_A6XX_RBBM_INT_0_STATUS) &
		A6XX_RBBM_INT_0_MASK_RBBM_HANG_DETECT);
}