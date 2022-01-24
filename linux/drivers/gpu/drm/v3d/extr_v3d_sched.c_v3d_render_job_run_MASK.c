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
struct TYPE_8__ {TYPE_2__* s_fence; } ;
struct TYPE_9__ {scalar_t__ irq_fence; TYPE_3__ base; struct v3d_dev* v3d; } ;
struct v3d_render_job {int /*<<< orphan*/  end; int /*<<< orphan*/  start; TYPE_4__ base; } ;
struct drm_device {int dummy; } ;
struct v3d_dev {struct v3d_render_job* render_job; struct drm_device drm; } ;
struct drm_sched_job {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  seqno; } ;
struct TYPE_6__ {int /*<<< orphan*/  error; } ;
struct TYPE_7__ {TYPE_1__ finished; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  V3D_CLE_CT1QBA ; 
 int /*<<< orphan*/  V3D_CLE_CT1QEA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V3D_RENDER ; 
 scalar_t__ FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct v3d_render_job* FUNC4 (struct drm_sched_job*) ; 
 TYPE_5__* FUNC5 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct dma_fence* FUNC8 (struct v3d_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct v3d_dev*) ; 

__attribute__((used)) static struct dma_fence *FUNC10(struct drm_sched_job *sched_job)
{
	struct v3d_render_job *job = FUNC4(sched_job);
	struct v3d_dev *v3d = job->base.v3d;
	struct drm_device *dev = &v3d->drm;
	struct dma_fence *fence;

	if (FUNC7(job->base.base.s_fence->finished.error))
		return NULL;

	v3d->render_job = job;

	/* Can we avoid this flush?  We need to be careful of
	 * scheduling, though -- imagine job0 rendering to texture and
	 * job1 reading, and them being executed as bin0, bin1,
	 * render0, render1, so that render1's flush at bin time
	 * wasn't enough.
	 */
	FUNC9(v3d);

	fence = FUNC8(v3d, V3D_RENDER);
	if (FUNC0(fence))
		return NULL;

	if (job->base.irq_fence)
		FUNC3(job->base.irq_fence);
	job->base.irq_fence = FUNC2(fence);

	FUNC6(dev, true, FUNC5(fence)->seqno,
			    job->start, job->end);

	/* XXX: Set the QCFG */

	/* Set the current and end address of the control list.
	 * Writing the end register is what starts the job.
	 */
	FUNC1(0, V3D_CLE_CT1QBA, job->start);
	FUNC1(0, V3D_CLE_CT1QEA, job->end);

	return fence;
}