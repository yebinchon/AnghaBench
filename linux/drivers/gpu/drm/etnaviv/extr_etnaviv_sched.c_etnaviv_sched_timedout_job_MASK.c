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
typedef  void* u32 ;
struct etnaviv_gpu {void* hangcheck_dma_addr; int /*<<< orphan*/  sched; } ;
struct etnaviv_gem_submit {int /*<<< orphan*/  out_fence; struct etnaviv_gpu* gpu; } ;
struct drm_sched_job {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIVS_FE_DMA_ADDRESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_sched_job*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct drm_sched_job*) ; 
 int /*<<< orphan*/  FUNC5 (struct etnaviv_gem_submit*) ; 
 int /*<<< orphan*/  FUNC6 (struct etnaviv_gpu*) ; 
 void* FUNC7 (struct etnaviv_gpu*,int /*<<< orphan*/ ) ; 
 struct etnaviv_gem_submit* FUNC8 (struct drm_sched_job*) ; 

__attribute__((used)) static void FUNC9(struct drm_sched_job *sched_job)
{
	struct etnaviv_gem_submit *submit = FUNC8(sched_job);
	struct etnaviv_gpu *gpu = submit->gpu;
	u32 dma_addr;
	int change;

	/*
	 * If the GPU managed to complete this jobs fence, the timout is
	 * spurious. Bail out.
	 */
	if (FUNC0(submit->out_fence))
		return;

	/*
	 * If the GPU is still making forward progress on the front-end (which
	 * should never loop) we shift out the timeout to give it a chance to
	 * finish the job.
	 */
	dma_addr = FUNC7(gpu, VIVS_FE_DMA_ADDRESS);
	change = dma_addr - gpu->hangcheck_dma_addr;
	if (change < 0 || change > 16) {
		gpu->hangcheck_dma_addr = dma_addr;
		return;
	}

	/* block scheduler */
	FUNC4(&gpu->sched, sched_job);

	if(sched_job)
		FUNC1(sched_job);

	/* get the GPU back into the init state */
	FUNC5(submit);
	FUNC6(gpu);

	FUNC2(&gpu->sched);

	/* restart scheduler after GPU is usable again */
	FUNC3(&gpu->sched, true);
}