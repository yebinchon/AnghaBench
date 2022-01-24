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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct msm_gpu {int /*<<< orphan*/  core_clk; TYPE_1__* funcs; } ;
struct device {int dummy; } ;
struct dev_pm_opp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* gpu_set_freq ) (struct msm_gpu*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 int FUNC1 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct dev_pm_opp*) ; 
 struct dev_pm_opp* FUNC4 (struct device*,unsigned long*,int /*<<< orphan*/ ) ; 
 struct msm_gpu* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct device *dev, unsigned long *freq,
		u32 flags)
{
	struct msm_gpu *gpu = FUNC5(FUNC7(dev));
	struct dev_pm_opp *opp;

	opp = FUNC4(dev, freq, flags);

	if (FUNC0(opp))
		return FUNC1(opp);

	if (gpu->funcs->gpu_set_freq)
		gpu->funcs->gpu_set_freq(gpu, (u64)*freq);
	else
		FUNC2(gpu->core_clk, *freq);

	FUNC3(opp);

	return 0;
}