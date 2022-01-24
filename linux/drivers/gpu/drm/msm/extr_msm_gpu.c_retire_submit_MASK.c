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
typedef  int u64 ;
struct msm_ringbuffer {TYPE_1__* memptrs; } ;
struct msm_gpu_submit_stats {int alwayson_end; int alwayson_start; int cpcycles_end; int cpcycles_start; } ;
struct msm_gpu {TYPE_3__* pdev; } ;
struct msm_gem_submit {int seqno; int nr_bos; int /*<<< orphan*/  aspace; TYPE_2__* bos; } ;
struct msm_gem_object {int /*<<< orphan*/  base; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct msm_gem_object* obj; } ;
struct TYPE_4__ {struct msm_gpu_submit_stats* stats; } ;

/* Variables and functions */
 int MSM_GPU_SUBMIT_STATS_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gem_submit*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct msm_gem_submit*,int,int,int,int) ; 

__attribute__((used)) static void FUNC8(struct msm_gpu *gpu, struct msm_ringbuffer *ring,
		struct msm_gem_submit *submit)
{
	int index = submit->seqno % MSM_GPU_SUBMIT_STATS_COUNT;
	volatile struct msm_gpu_submit_stats *stats;
	u64 elapsed, clock = 0;
	int i;

	stats = &ring->memptrs->stats[index];
	/* Convert 19.2Mhz alwayson ticks to nanoseconds for elapsed time */
	elapsed = (stats->alwayson_end - stats->alwayson_start) * 10000;
	FUNC0(elapsed, 192);

	/* Calculate the clock frequency from the number of CP cycles */
	if (elapsed) {
		clock = (stats->cpcycles_end - stats->cpcycles_start) * 1000;
		FUNC0(clock, elapsed);
	}

	FUNC7(submit, elapsed, clock,
		stats->alwayson_start, stats->alwayson_end);

	for (i = 0; i < submit->nr_bos; i++) {
		struct msm_gem_object *msm_obj = submit->bos[i].obj;
		/* move to inactive: */
		FUNC2(&msm_obj->base);
		FUNC4(&msm_obj->base, submit->aspace);
		FUNC1(&msm_obj->base);
	}

	FUNC5(&gpu->pdev->dev);
	FUNC6(&gpu->pdev->dev);
	FUNC3(submit);
}