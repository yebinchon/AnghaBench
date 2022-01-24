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
struct a3xx_gpu {int /*<<< orphan*/  ocmem_hdl; scalar_t__ ocmem_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCMEM_GRAPHICS ; 
 int /*<<< orphan*/  FUNC1 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct a3xx_gpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct a3xx_gpu* FUNC4 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC5 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC6(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC5(gpu);
	struct a3xx_gpu *a3xx_gpu = FUNC4(adreno_gpu);

	FUNC0("%s", gpu->name);

	FUNC1(adreno_gpu);

#ifdef CONFIG_MSM_OCMEM
	if (a3xx_gpu->ocmem_base)
		ocmem_free(OCMEM_GRAPHICS, a3xx_gpu->ocmem_hdl);
#endif

	FUNC2(a3xx_gpu);
}