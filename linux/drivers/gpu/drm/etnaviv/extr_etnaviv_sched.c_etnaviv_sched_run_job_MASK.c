#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct etnaviv_gem_submit {TYPE_3__* gpu; } ;
struct drm_sched_job {TYPE_2__* s_fence; } ;
struct dma_fence {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  error; } ;
struct TYPE_5__ {TYPE_1__ finished; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct dma_fence* FUNC1 (struct etnaviv_gem_submit*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct etnaviv_gem_submit* FUNC3 (struct drm_sched_job*) ; 

__attribute__((used)) static struct dma_fence *FUNC4(struct drm_sched_job *sched_job)
{
	struct etnaviv_gem_submit *submit = FUNC3(sched_job);
	struct dma_fence *fence = NULL;

	if (FUNC2(!sched_job->s_fence->finished.error))
		fence = FUNC1(submit);
	else
		FUNC0(submit->gpu->dev, "skipping bad job\n");

	return fence;
}