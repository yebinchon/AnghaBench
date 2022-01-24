#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  time; } ;
struct msm_gpu {TYPE_1__ devfreq; TYPE_2__* funcs; int /*<<< orphan*/  core_clk; } ;
struct device {int dummy; } ;
struct devfreq_dev_status {int /*<<< orphan*/  total_time; int /*<<< orphan*/  busy_time; int /*<<< orphan*/  current_frequency; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* gpu_busy ) (struct msm_gpu*) ;int /*<<< orphan*/  (* gpu_get_freq ) (struct msm_gpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct msm_gpu* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev,
		struct devfreq_dev_status *status)
{
	struct msm_gpu *gpu = FUNC3(FUNC6(dev));
	ktime_t time;

	if (gpu->funcs->gpu_get_freq)
		status->current_frequency = gpu->funcs->gpu_get_freq(gpu);
	else
		status->current_frequency = FUNC0(gpu->core_clk);

	status->busy_time = gpu->funcs->gpu_busy(gpu);

	time = FUNC1();
	status->total_time = FUNC2(time, gpu->devfreq.time);
	gpu->devfreq.time = time;

	return 0;
}