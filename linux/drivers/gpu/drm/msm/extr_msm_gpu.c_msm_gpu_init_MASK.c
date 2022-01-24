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
typedef  int uint64_t ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct msm_rbmemptrs {int dummy; } ;
struct msm_gpu_funcs {int dummy; } ;
struct msm_gpu_config {int nr_rings; int /*<<< orphan*/  va_end; int /*<<< orphan*/  va_start; int /*<<< orphan*/  ioname; } ;
struct msm_gpu {int num_perfcntrs; void** last_cntrs; char const* name; void* mmio; int irq; void* ebi1_clk; void* gpu_reg; void* gpu_cx; void* aspace; void** rb; int nr_rings; int /*<<< orphan*/  memptrs_bo; struct platform_device* pdev; int /*<<< orphan*/  perf_lock; int /*<<< orphan*/  hangcheck_timer; int /*<<< orphan*/  recover_work; int /*<<< orphan*/  retire_work; int /*<<< orphan*/  active_list; struct msm_gpu_funcs const* funcs; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC7 (void*) ; 
 int /*<<< orphan*/  MSM_BO_UNCACHED ; 
 int FUNC8 (void*) ; 
 scalar_t__ FUNC9 (int) ; 
 void* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct msm_gpu*) ; 
 int FUNC12 (struct platform_device*,struct msm_gpu*) ; 
 int /*<<< orphan*/  hangcheck_handler ; 
 int /*<<< orphan*/  irq_handler ; 
 void* FUNC13 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct msm_gpu*) ; 
 void* FUNC15 (struct drm_device*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC18 (struct msm_gpu*,struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC20 (void*) ; 
 void* FUNC21 (struct msm_gpu*,int,void*,int) ; 
 int FUNC22 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*,struct msm_gpu*) ; 
 int /*<<< orphan*/  recover_worker ; 
 int /*<<< orphan*/  retire_worker ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC26(struct drm_device *drm, struct platform_device *pdev,
		struct msm_gpu *gpu, const struct msm_gpu_funcs *funcs,
		const char *name, struct msm_gpu_config *config)
{
	int i, ret, nr_rings = config->nr_rings;
	void *memptrs;
	uint64_t memptrs_iova;

	if (FUNC9(gpu->num_perfcntrs > FUNC0(gpu->last_cntrs)))
		gpu->num_perfcntrs = FUNC0(gpu->last_cntrs);

	gpu->dev = drm;
	gpu->funcs = funcs;
	gpu->name = name;

	FUNC5(&gpu->active_list);
	FUNC6(&gpu->retire_work, retire_worker);
	FUNC6(&gpu->recover_work, recover_worker);


	FUNC25(&gpu->hangcheck_timer, hangcheck_handler, 0);

	FUNC24(&gpu->perf_lock);


	/* Map registers: */
	gpu->mmio = FUNC19(pdev, config->ioname, name);
	if (FUNC7(gpu->mmio)) {
		ret = FUNC8(gpu->mmio);
		goto fail;
	}

	/* Get Interrupt: */
	gpu->irq = FUNC22(pdev, 0);
	if (gpu->irq < 0) {
		ret = gpu->irq;
		FUNC2(drm->dev, "failed to get irq: %d\n", ret);
		goto fail;
	}

	ret = FUNC11(&pdev->dev, gpu->irq, irq_handler,
			IRQF_TRIGGER_HIGH, gpu->name, gpu);
	if (ret) {
		FUNC2(drm->dev, "failed to request IRQ%u: %d\n", gpu->irq, ret);
		goto fail;
	}

	ret = FUNC12(pdev, gpu);
	if (ret)
		goto fail;

	gpu->ebi1_clk = FUNC13(pdev, "bus");
	FUNC1("ebi1_clk: %p", gpu->ebi1_clk);
	if (FUNC7(gpu->ebi1_clk))
		gpu->ebi1_clk = NULL;

	/* Acquire regulators: */
	gpu->gpu_reg = FUNC10(&pdev->dev, "vdd");
	FUNC1("gpu_reg: %p", gpu->gpu_reg);
	if (FUNC7(gpu->gpu_reg))
		gpu->gpu_reg = NULL;

	gpu->gpu_cx = FUNC10(&pdev->dev, "vddcx");
	FUNC1("gpu_cx: %p", gpu->gpu_cx);
	if (FUNC7(gpu->gpu_cx))
		gpu->gpu_cx = NULL;

	gpu->pdev = pdev;
	FUNC23(pdev, gpu);

	FUNC14(gpu);

	gpu->aspace = FUNC18(gpu, pdev,
		config->va_start, config->va_end);

	if (gpu->aspace == NULL)
		FUNC3(drm->dev, "%s: no IOMMU, fallback to VRAM carveout!\n", name);
	else if (FUNC7(gpu->aspace)) {
		ret = FUNC8(gpu->aspace);
		goto fail;
	}

	memptrs = FUNC15(drm,
		sizeof(struct msm_rbmemptrs) * nr_rings,
		MSM_BO_UNCACHED, gpu->aspace, &gpu->memptrs_bo,
		&memptrs_iova);

	if (FUNC7(memptrs)) {
		ret = FUNC8(memptrs);
		FUNC2(drm->dev, "could not allocate memptrs: %d\n", ret);
		goto fail;
	}

	FUNC17(gpu->memptrs_bo, "memptrs");

	if (nr_rings > FUNC0(gpu->rb)) {
		FUNC4(drm->dev, "Only creating %zu ringbuffers\n",
			FUNC0(gpu->rb));
		nr_rings = FUNC0(gpu->rb);
	}

	/* Create ringbuffer(s): */
	for (i = 0; i < nr_rings; i++) {
		gpu->rb[i] = FUNC21(gpu, i, memptrs, memptrs_iova);

		if (FUNC7(gpu->rb[i])) {
			ret = FUNC8(gpu->rb[i]);
			FUNC2(drm->dev,
				"could not create ringbuffer %d: %d\n", i, ret);
			goto fail;
		}

		memptrs += sizeof(struct msm_rbmemptrs);
		memptrs_iova += sizeof(struct msm_rbmemptrs);
	}

	gpu->nr_rings = nr_rings;

	return 0;

fail:
	for (i = 0; i < FUNC0(gpu->rb); i++)  {
		FUNC20(gpu->rb[i]);
		gpu->rb[i] = NULL;
	}

	FUNC16(gpu->memptrs_bo, gpu->aspace, false);

	FUNC23(pdev, NULL);
	return ret;
}