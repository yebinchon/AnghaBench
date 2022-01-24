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
struct msm_gpu {int /*<<< orphan*/  icc_path; } ;
struct adreno_gpu {struct msm_gpu base; int /*<<< orphan*/ * fw; TYPE_1__* info; } ;
struct TYPE_2__ {int /*<<< orphan*/  fw; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct adreno_gpu *adreno_gpu)
{
	struct msm_gpu *gpu = &adreno_gpu->base;
	unsigned int i;

	for (i = 0; i < FUNC0(adreno_gpu->info->fw); i++)
		FUNC3(adreno_gpu->fw[i]);

	FUNC1(gpu->icc_path);

	FUNC2(&adreno_gpu->base);
}