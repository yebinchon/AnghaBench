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
struct a5xx_crashdumper {int /*<<< orphan*/  iova; int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_A5XX_CP_CRASH_DUMP_CNTL ; 
 int /*<<< orphan*/  REG_A5XX_CP_CRASH_SCRIPT_BASE_HI ; 
 int /*<<< orphan*/  REG_A5XX_CP_CRASH_SCRIPT_BASE_LO ; 
 int FUNC1 (struct msm_gpu*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct msm_gpu *gpu,
		struct a5xx_crashdumper *dumper)
{
	u32 val;

	if (FUNC0(dumper->ptr))
		return -EINVAL;

	FUNC3(gpu, REG_A5XX_CP_CRASH_SCRIPT_BASE_LO,
		REG_A5XX_CP_CRASH_SCRIPT_BASE_HI, dumper->iova);

	FUNC2(gpu, REG_A5XX_CP_CRASH_DUMP_CNTL, 1);

	return FUNC1(gpu, REG_A5XX_CP_CRASH_DUMP_CNTL, val,
		val & 0x04, 100, 10000);
}