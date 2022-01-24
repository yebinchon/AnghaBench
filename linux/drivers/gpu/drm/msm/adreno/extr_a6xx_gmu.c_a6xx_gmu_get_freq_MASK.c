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
struct a6xx_gmu {unsigned long freq; } ;
struct a6xx_gpu {struct a6xx_gmu gmu; } ;

/* Variables and functions */
 struct a6xx_gpu* FUNC0 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC1 (struct msm_gpu*) ; 

unsigned long FUNC2(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC1(gpu);
	struct a6xx_gpu *a6xx_gpu = FUNC0(adreno_gpu);
	struct a6xx_gmu *gmu = &a6xx_gpu->gmu;

	return  gmu->freq;
}