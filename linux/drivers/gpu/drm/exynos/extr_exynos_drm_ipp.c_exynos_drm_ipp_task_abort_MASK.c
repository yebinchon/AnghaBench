#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct exynos_drm_ipp_task {int flags; int /*<<< orphan*/  head; } ;
struct exynos_drm_ipp {int /*<<< orphan*/  lock; TYPE_1__* funcs; struct exynos_drm_ipp_task* task; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* abort ) (struct exynos_drm_ipp*,struct exynos_drm_ipp_task*) ;} ;

/* Variables and functions */
 int DRM_EXYNOS_IPP_TASK_ASYNC ; 
 int DRM_EXYNOS_IPP_TASK_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct exynos_drm_ipp_task*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct exynos_drm_ipp*,struct exynos_drm_ipp_task*) ; 

__attribute__((used)) static void FUNC5(struct exynos_drm_ipp *ipp,
				      struct exynos_drm_ipp_task *task)
{
	unsigned long flags;

	FUNC2(&ipp->lock, flags);
	if (task->flags & DRM_EXYNOS_IPP_TASK_DONE) {
		/* already completed task */
		FUNC0(task);
	} else if (ipp->task != task) {
		/* task has not been scheduled for execution yet */
		FUNC1(&task->head);
		FUNC0(task);
	} else {
		/*
		 * currently processed task, call abort() and perform
		 * cleanup with async worker
		 */
		task->flags |= DRM_EXYNOS_IPP_TASK_ASYNC;
		FUNC3(&ipp->lock, flags);
		if (ipp->funcs->abort)
			ipp->funcs->abort(ipp, task);
		return;
	}
	FUNC3(&ipp->lock, flags);
}