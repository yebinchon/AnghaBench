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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*) ; 
 int FUNC2 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gpu*) ; 
 scalar_t__ FUNC5 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC6 (struct msm_gpu*) ; 

int FUNC7(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC6(gpu);
	int ret;

	/* Set up the limits management */
	if (FUNC5(adreno_gpu))
		FUNC0(gpu);
	else
		FUNC1(gpu);

	/* Set up SP/TP power collpase */
	FUNC4(gpu);

	/* Start the GPMU */
	ret = FUNC2(gpu);
	if (ret)
		return ret;

	/* Start the limits management */
	FUNC3(gpu);

	return 0;
}