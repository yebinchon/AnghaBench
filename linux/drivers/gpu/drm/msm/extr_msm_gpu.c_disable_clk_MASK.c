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
struct msm_gpu {scalar_t__ rbbmtimer_clk; scalar_t__ core_clk; int /*<<< orphan*/  grp_clks; int /*<<< orphan*/  nr_clocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(struct msm_gpu *gpu)
{
	FUNC0(gpu->nr_clocks, gpu->grp_clks);

	/*
	 * Set the clock to a deliberately low rate. On older targets the clock
	 * speed had to be non zero to avoid problems. On newer targets this
	 * will be rounded down to zero anyway so it all works out.
	 */
	if (gpu->core_clk)
		FUNC1(gpu->core_clk, 27000000);

	if (gpu->rbbmtimer_clk)
		FUNC1(gpu->rbbmtimer_clk, 0);

	return 0;
}