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
struct exynos_drm_ipp_task {int ret; int /*<<< orphan*/  ipp; int /*<<< orphan*/ * event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct exynos_drm_ipp_task*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct exynos_drm_ipp_task*) ; 

__attribute__((used)) static int FUNC2(struct exynos_drm_ipp_task *task)
{
	int ret = task->ret;

	if (ret == 0 && task->event) {
		FUNC0(task);
		/* ensure event won't be canceled on task free */
		task->event = NULL;
	}

	FUNC1(task->ipp, task);
	return ret;
}