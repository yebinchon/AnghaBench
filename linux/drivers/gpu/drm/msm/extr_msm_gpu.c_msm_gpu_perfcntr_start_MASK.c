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
struct TYPE_4__ {int /*<<< orphan*/  time; int /*<<< orphan*/  active; } ;
struct msm_gpu {int perfcntr_active; int /*<<< orphan*/  perf_lock; scalar_t__ totaltime; scalar_t__ activetime; TYPE_2__ last_sample; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct msm_gpu *gpu)
{
	unsigned long flags;

	FUNC2(&gpu->pdev->dev);

	FUNC3(&gpu->perf_lock, flags);
	/* we could dynamically enable/disable perfcntr registers too.. */
	gpu->last_sample.active = FUNC1(gpu);
	gpu->last_sample.time = FUNC0();
	gpu->activetime = gpu->totaltime = 0;
	gpu->perfcntr_active = true;
	FUNC5(gpu, 0, NULL);
	FUNC4(&gpu->perf_lock, flags);
}