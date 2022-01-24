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
struct msm_gpu {int /*<<< orphan*/  aspace; int /*<<< orphan*/  dev; } ;
struct a5xx_crashdumper {int /*<<< orphan*/  ptr; int /*<<< orphan*/  bo; int /*<<< orphan*/  iova; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSM_BO_UNCACHED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_1M ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct msm_gpu *gpu,
		struct a5xx_crashdumper *dumper)
{
	dumper->ptr = FUNC2(gpu->dev,
		SZ_1M, MSM_BO_UNCACHED, gpu->aspace,
		&dumper->bo, &dumper->iova);

	if (!FUNC0(dumper->ptr))
		FUNC3(dumper->bo, "crashdump");

	return FUNC1(dumper->ptr);
}