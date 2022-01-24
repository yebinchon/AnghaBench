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
struct TYPE_5__ {int iia; int iis; int ica; int iua; int ioa; int ios; int* coef; int icfg; } ;
struct TYPE_4__ {scalar_t__ irq_fence; struct v3d_dev* v3d; } ;
struct v3d_tfu_job {TYPE_2__ args; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;
struct v3d_dev {struct v3d_tfu_job* tfu_job; struct drm_device drm; } ;
struct drm_sched_job {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  seqno; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  V3D_TFU ; 
 int /*<<< orphan*/  V3D_TFU_COEF0 ; 
 int V3D_TFU_COEF0_USECOEF ; 
 int /*<<< orphan*/  V3D_TFU_COEF1 ; 
 int /*<<< orphan*/  V3D_TFU_COEF2 ; 
 int /*<<< orphan*/  V3D_TFU_COEF3 ; 
 int /*<<< orphan*/  V3D_TFU_ICA ; 
 int /*<<< orphan*/  V3D_TFU_ICFG ; 
 int V3D_TFU_ICFG_IOC ; 
 int /*<<< orphan*/  V3D_TFU_IIA ; 
 int /*<<< orphan*/  V3D_TFU_IIS ; 
 int /*<<< orphan*/  V3D_TFU_IOA ; 
 int /*<<< orphan*/  V3D_TFU_IOS ; 
 int /*<<< orphan*/  V3D_TFU_IUA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct v3d_tfu_job* FUNC4 (struct drm_sched_job*) ; 
 TYPE_3__* FUNC5 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct dma_fence* FUNC7 (struct v3d_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dma_fence *
FUNC8(struct drm_sched_job *sched_job)
{
	struct v3d_tfu_job *job = FUNC4(sched_job);
	struct v3d_dev *v3d = job->base.v3d;
	struct drm_device *dev = &v3d->drm;
	struct dma_fence *fence;

	fence = FUNC7(v3d, V3D_TFU);
	if (FUNC0(fence))
		return NULL;

	v3d->tfu_job = job;
	if (job->base.irq_fence)
		FUNC3(job->base.irq_fence);
	job->base.irq_fence = FUNC2(fence);

	FUNC6(dev, FUNC5(fence)->seqno);

	FUNC1(V3D_TFU_IIA, job->args.iia);
	FUNC1(V3D_TFU_IIS, job->args.iis);
	FUNC1(V3D_TFU_ICA, job->args.ica);
	FUNC1(V3D_TFU_IUA, job->args.iua);
	FUNC1(V3D_TFU_IOA, job->args.ioa);
	FUNC1(V3D_TFU_IOS, job->args.ios);
	FUNC1(V3D_TFU_COEF0, job->args.coef[0]);
	if (job->args.coef[0] & V3D_TFU_COEF0_USECOEF) {
		FUNC1(V3D_TFU_COEF1, job->args.coef[1]);
		FUNC1(V3D_TFU_COEF2, job->args.coef[2]);
		FUNC1(V3D_TFU_COEF3, job->args.coef[3]);
	}
	/* ICFG kicks off the job. */
	FUNC1(V3D_TFU_ICFG, job->args.icfg | V3D_TFU_ICFG_IOC);

	return fence;
}