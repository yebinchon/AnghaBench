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
struct TYPE_2__ {struct msm_gpu base; } ;
struct a6xx_gmu {int /*<<< orphan*/  dev; int /*<<< orphan*/  clocks; int /*<<< orphan*/  nr_clocks; int /*<<< orphan*/  gxpd; scalar_t__ hung; } ;
struct a6xx_gpu {TYPE_1__ base; struct a6xx_gmu gmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct a6xx_gmu*) ; 
 int /*<<< orphan*/  FUNC2 (struct a6xx_gmu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct a6xx_gpu *a6xx_gpu)
{
	struct a6xx_gmu *gmu = &a6xx_gpu->gmu;
	struct msm_gpu *gpu = &a6xx_gpu->base.base;

	if (!FUNC5(gmu->dev))
		return 0;

	/*
	 * Force the GMU off if we detected a hang, otherwise try to shut it
	 * down gracefully
	 */
	if (gmu->hung)
		FUNC1(gmu);
	else
		FUNC2(gmu);

	/* Remove the bus vote */
	FUNC4(gpu->icc_path, 0, 0);

	/*
	 * Make sure the GX domain is off before turning off the GMU (CX)
	 * domain. Usually the GMU does this but only if the shutdown sequence
	 * was successful
	 */
	if (!FUNC0(gmu->gxpd))
		FUNC6(gmu->gxpd);

	FUNC3(gmu->nr_clocks, gmu->clocks);

	FUNC6(gmu->dev);

	return 0;
}