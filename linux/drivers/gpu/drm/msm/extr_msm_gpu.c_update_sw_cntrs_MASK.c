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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  time; scalar_t__ active; } ;
struct msm_gpu {int /*<<< orphan*/  perf_lock; TYPE_1__ last_sample; int /*<<< orphan*/  activetime; int /*<<< orphan*/  totaltime; int /*<<< orphan*/  perfcntr_active; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct msm_gpu *gpu)
{
	ktime_t time;
	uint32_t elapsed;
	unsigned long flags;

	FUNC4(&gpu->perf_lock, flags);
	if (!gpu->perfcntr_active)
		goto out;

	time = FUNC0();
	elapsed = FUNC2(FUNC1(time, gpu->last_sample.time));

	gpu->totaltime += elapsed;
	if (gpu->last_sample.active)
		gpu->activetime += elapsed;

	gpu->last_sample.active = FUNC3(gpu);
	gpu->last_sample.time = time;

out:
	FUNC5(&gpu->perf_lock, flags);
}