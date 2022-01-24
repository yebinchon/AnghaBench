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
typedef  scalar_t__ uint64_t ;
struct ww_acquire_ctx {int dummy; } ;
struct vc4_fence {int /*<<< orphan*/  base; scalar_t__ seqno; struct drm_device* dev; } ;
struct vc4_exec_info {scalar_t__ perfmon; int /*<<< orphan*/  head; int /*<<< orphan*/ * fence; scalar_t__ seqno; } ;
struct vc4_dev {int /*<<< orphan*/  job_lock; int /*<<< orphan*/  bin_job_list; int /*<<< orphan*/  dma_fence_context; scalar_t__ emit_seqno; } ;
struct drm_syncobj {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_syncobj*,int /*<<< orphan*/ *) ; 
 struct vc4_fence* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vc4_dev* FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  vc4_fence_ops ; 
 struct vc4_exec_info* FUNC7 (struct vc4_dev*) ; 
 struct vc4_exec_info* FUNC8 (struct vc4_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*,struct vc4_exec_info*,struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct vc4_exec_info*,scalar_t__) ; 

__attribute__((used)) static int
FUNC13(struct drm_device *dev, struct vc4_exec_info *exec,
		 struct ww_acquire_ctx *acquire_ctx,
		 struct drm_syncobj *out_sync)
{
	struct vc4_dev *vc4 = FUNC6(dev);
	struct vc4_exec_info *renderjob;
	uint64_t seqno;
	unsigned long irqflags;
	struct vc4_fence *fence;

	fence = FUNC2(sizeof(*fence), GFP_KERNEL);
	if (!fence)
		return -ENOMEM;
	fence->dev = dev;

	FUNC4(&vc4->job_lock, irqflags);

	seqno = ++vc4->emit_seqno;
	exec->seqno = seqno;

	FUNC0(&fence->base, &vc4_fence_ops, &vc4->job_lock,
		       vc4->dma_fence_context, exec->seqno);
	fence->seqno = exec->seqno;
	exec->fence = &fence->base;

	if (out_sync)
		FUNC1(out_sync, exec->fence);

	FUNC12(exec, seqno);

	FUNC11(dev, exec, acquire_ctx);

	FUNC3(&exec->head, &vc4->bin_job_list);

	/* If no bin job was executing and if the render job (if any) has the
	 * same perfmon as our job attached to it (or if both jobs don't have
	 * perfmon activated), then kick ours off.  Otherwise, it'll get
	 * started when the previous job's flush/render done interrupt occurs.
	 */
	renderjob = FUNC8(vc4);
	if (FUNC7(vc4) == exec &&
	    (!renderjob || renderjob->perfmon == exec->perfmon)) {
		FUNC10(dev);
		FUNC9(dev);
	}

	FUNC5(&vc4->job_lock, irqflags);

	return 0;
}