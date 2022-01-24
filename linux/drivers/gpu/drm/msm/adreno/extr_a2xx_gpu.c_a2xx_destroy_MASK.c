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
struct msm_gpu {int /*<<< orphan*/  name; } ;
struct adreno_gpu {int dummy; } ;
struct a2xx_gpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct a2xx_gpu*) ; 
 struct a2xx_gpu* FUNC3 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC4 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC5(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC4(gpu);
	struct a2xx_gpu *a2xx_gpu = FUNC3(adreno_gpu);

	FUNC0("%s", gpu->name);

	FUNC1(adreno_gpu);

	FUNC2(a2xx_gpu);
}