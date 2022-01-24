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
struct exynos_drm_ipp_task {int flags; int ret; int /*<<< orphan*/  cleanup_work; int /*<<< orphan*/  dev; struct exynos_drm_ipp* ipp; } ;
struct exynos_drm_ipp {int /*<<< orphan*/  done_wq; int /*<<< orphan*/  lock; struct exynos_drm_ipp_task* task; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct exynos_drm_ipp_task*,int) ; 
 int DRM_EXYNOS_IPP_TASK_ASYNC ; 
 int DRM_EXYNOS_IPP_TASK_DONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exynos_drm_ipp_cleanup_work ; 
 int /*<<< orphan*/  FUNC2 (struct exynos_drm_ipp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct exynos_drm_ipp_task *task, int ret)
{
	struct exynos_drm_ipp *ipp = task->ipp;
	unsigned long flags;

	FUNC0(task->dev, "ipp: %d, task %pK done: %d\n",
			     ipp->id, task, ret);

	FUNC4(&ipp->lock, flags);
	if (ipp->task == task)
		ipp->task = NULL;
	task->flags |= DRM_EXYNOS_IPP_TASK_DONE;
	task->ret = ret;
	FUNC5(&ipp->lock, flags);

	FUNC2(ipp);
	FUNC6(&ipp->done_wq);

	if (task->flags & DRM_EXYNOS_IPP_TASK_ASYNC) {
		FUNC1(&task->cleanup_work, exynos_drm_ipp_cleanup_work);
		FUNC3(&task->cleanup_work);
	}
}