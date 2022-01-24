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
struct etnaviv_gpu {int /*<<< orphan*/  lock; TYPE_1__* event; scalar_t__ mmu_context; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ user_size; } ;
struct etnaviv_gem_submit {int runtime_resumed; int /*<<< orphan*/  refcount; scalar_t__ nr_pmrs; TYPE_2__ cmdbuf; scalar_t__ mmu_context; int /*<<< orphan*/  exec_state; scalar_t__ prev_mmu_context; struct etnaviv_gpu* gpu; } ;
struct dma_fence {int dummy; } ;
struct TYPE_3__ {struct etnaviv_gem_submit* submit; int /*<<< orphan*/ * sync_point; struct dma_fence* fence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_gpu*,int /*<<< orphan*/ ,scalar_t__,unsigned int,TYPE_2__*) ; 
 struct dma_fence* FUNC2 (struct etnaviv_gpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct etnaviv_gpu*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct etnaviv_gpu*,unsigned int) ; 
 int FUNC6 (struct etnaviv_gpu*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct etnaviv_gpu*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sync_point_perfmon_sample_post ; 
 int /*<<< orphan*/  sync_point_perfmon_sample_pre ; 

struct dma_fence *FUNC12(struct etnaviv_gem_submit *submit)
{
	struct etnaviv_gpu *gpu = submit->gpu;
	struct dma_fence *gpu_fence;
	unsigned int i, nr_events = 1, event[3];
	int ret;

	if (!submit->runtime_resumed) {
		ret = FUNC11(gpu->dev);
		if (ret < 0)
			return NULL;
		submit->runtime_resumed = true;
	}

	/*
	 * if there are performance monitor requests we need to have
	 * - a sync point to re-configure gpu and process ETNA_PM_PROCESS_PRE
	 *   requests.
	 * - a sync point to re-configure gpu, process ETNA_PM_PROCESS_POST requests
	 *   and update the sequence number for userspace.
	 */
	if (submit->nr_pmrs)
		nr_events = 3;

	ret = FUNC6(gpu, nr_events, event);
	if (ret) {
		FUNC0("no free events\n");
		return NULL;
	}

	FUNC9(&gpu->lock);

	gpu_fence = FUNC2(gpu);
	if (!gpu_fence) {
		for (i = 0; i < nr_events; i++)
			FUNC7(gpu, event[i]);

		goto out_unlock;
	}

	if (!gpu->mmu_context) {
		FUNC4(submit->mmu_context);
		gpu->mmu_context = submit->mmu_context;
		FUNC3(gpu);
	} else {
		FUNC4(gpu->mmu_context);
		submit->prev_mmu_context = gpu->mmu_context;
	}

	if (submit->nr_pmrs) {
		gpu->event[event[1]].sync_point = &sync_point_perfmon_sample_pre;
		FUNC8(&submit->refcount);
		gpu->event[event[1]].submit = submit;
		FUNC5(gpu, event[1]);
	}

	gpu->event[event[0]].fence = gpu_fence;
	submit->cmdbuf.user_size = submit->cmdbuf.size - 8;
	FUNC1(gpu, submit->exec_state, submit->mmu_context,
			     event[0], &submit->cmdbuf);

	if (submit->nr_pmrs) {
		gpu->event[event[2]].sync_point = &sync_point_perfmon_sample_post;
		FUNC8(&submit->refcount);
		gpu->event[event[2]].submit = submit;
		FUNC5(gpu, event[2]);
	}

out_unlock:
	FUNC10(&gpu->lock);

	return gpu_fence;
}