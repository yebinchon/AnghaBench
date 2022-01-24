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
typedef  int u32 ;
struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gpu {int /*<<< orphan*/  gmu; } ;
struct a6xx_crashdumper {int /*<<< orphan*/  iova; int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_A6XX_CP_CRASH_DUMP_CNTL ; 
 int /*<<< orphan*/  REG_A6XX_CP_CRASH_DUMP_STATUS ; 
 int /*<<< orphan*/  REG_A6XX_CP_CRASH_SCRIPT_BASE_HI ; 
 int /*<<< orphan*/  REG_A6XX_CP_CRASH_SCRIPT_BASE_LO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct a6xx_gpu* FUNC5 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC6 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct msm_gpu *gpu,
		struct a6xx_crashdumper *dumper)
{
	struct adreno_gpu *adreno_gpu = FUNC6(gpu);
	struct a6xx_gpu *a6xx_gpu = FUNC5(adreno_gpu);
	u32 val;
	int ret;

	if (FUNC0(dumper->ptr))
		return -EINVAL;

	if (!FUNC1(&a6xx_gpu->gmu))
		return -EINVAL;

	/* Make sure all pending memory writes are posted */
	FUNC7();

	FUNC4(gpu, REG_A6XX_CP_CRASH_SCRIPT_BASE_LO,
		REG_A6XX_CP_CRASH_SCRIPT_BASE_HI, dumper->iova);

	FUNC3(gpu, REG_A6XX_CP_CRASH_DUMP_CNTL, 1);

	ret = FUNC2(gpu, REG_A6XX_CP_CRASH_DUMP_STATUS, val,
		val & 0x02, 100, 10000);

	FUNC3(gpu, REG_A6XX_CP_CRASH_DUMP_CNTL, 0);

	return ret;
}