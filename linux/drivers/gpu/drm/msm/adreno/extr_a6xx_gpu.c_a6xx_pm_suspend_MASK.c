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
struct TYPE_2__ {int /*<<< orphan*/  devfreq; } ;
struct msm_gpu {TYPE_1__ devfreq; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gpu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct a6xx_gpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct a6xx_gpu* FUNC2 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC3 (struct msm_gpu*) ; 

__attribute__((used)) static int FUNC4(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC3(gpu);
	struct a6xx_gpu *a6xx_gpu = FUNC2(adreno_gpu);

	FUNC1(gpu->devfreq.devfreq);

	return FUNC0(a6xx_gpu);
}