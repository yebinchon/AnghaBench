#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct drm_device {int dummy; } ;
struct v3d_dev {int /*<<< orphan*/  job_lock; struct v3d_bin_job* bin_job; struct drm_device drm; } ;
struct TYPE_8__ {TYPE_2__* s_fence; } ;
struct TYPE_9__ {scalar_t__ irq_fence; TYPE_3__ base; struct v3d_dev* v3d; } ;
struct v3d_bin_job {int start; int end; int qma; int qms; int qts; TYPE_4__ base; } ;
struct drm_sched_job {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  seqno; } ;
struct TYPE_6__ {int /*<<< orphan*/  error; } ;
struct TYPE_7__ {TYPE_1__ finished; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  V3D_BIN ; 
 int /*<<< orphan*/  V3D_CLE_CT0QBA ; 
 int /*<<< orphan*/  V3D_CLE_CT0QEA ; 
 int /*<<< orphan*/  V3D_CLE_CT0QMA ; 
 int /*<<< orphan*/  V3D_CLE_CT0QMS ; 
 int /*<<< orphan*/  V3D_CLE_CT0QTS ; 
 int V3D_CLE_CT0QTS_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  V3D_PTB_BPOS ; 
 scalar_t__ FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct v3d_bin_job* FUNC6 (struct drm_sched_job*) ; 
 TYPE_5__* FUNC7 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 struct dma_fence* FUNC10 (struct v3d_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct v3d_dev*) ; 

__attribute__((used)) static struct dma_fence *FUNC12(struct drm_sched_job *sched_job)
{
	struct v3d_bin_job *job = FUNC6(sched_job);
	struct v3d_dev *v3d = job->base.v3d;
	struct drm_device *dev = &v3d->drm;
	struct dma_fence *fence;
	unsigned long irqflags;

	if (FUNC9(job->base.base.s_fence->finished.error))
		return NULL;

	/* Lock required around bin_job update vs
	 * v3d_overflow_mem_work().
	 */
	FUNC4(&v3d->job_lock, irqflags);
	v3d->bin_job = job;
	/* Clear out the overflow allocation, so we don't
	 * reuse the overflow attached to a previous job.
	 */
	FUNC1(0, V3D_PTB_BPOS, 0);
	FUNC5(&v3d->job_lock, irqflags);

	FUNC11(v3d);

	fence = FUNC10(v3d, V3D_BIN);
	if (FUNC0(fence))
		return NULL;

	if (job->base.irq_fence)
		FUNC3(job->base.irq_fence);
	job->base.irq_fence = FUNC2(fence);

	FUNC8(dev, false, FUNC7(fence)->seqno,
			    job->start, job->end);

	/* Set the current and end address of the control list.
	 * Writing the end register is what starts the job.
	 */
	if (job->qma) {
		FUNC1(0, V3D_CLE_CT0QMA, job->qma);
		FUNC1(0, V3D_CLE_CT0QMS, job->qms);
	}
	if (job->qts) {
		FUNC1(0, V3D_CLE_CT0QTS,
			       V3D_CLE_CT0QTS_ENABLE |
			       job->qts);
	}
	FUNC1(0, V3D_CLE_CT0QBA, job->start);
	FUNC1(0, V3D_CLE_CT0QEA, job->end);

	return fence;
}