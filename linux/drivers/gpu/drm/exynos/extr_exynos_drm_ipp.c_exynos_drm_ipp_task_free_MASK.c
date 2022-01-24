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
struct exynos_drm_ipp_task {TYPE_1__* event; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  dev; } ;
struct exynos_drm_ipp {int /*<<< orphan*/  drm_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct exynos_drm_ipp_task*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct exynos_drm_ipp_task*) ; 

__attribute__((used)) static void FUNC4(struct exynos_drm_ipp *ipp,
				 struct exynos_drm_ipp_task *task)
{
	FUNC0(task->dev, "Freeing task %pK\n", task);

	FUNC2(&task->src);
	FUNC2(&task->dst);
	if (task->event)
		FUNC1(ipp->drm_dev, &task->event->base);
	FUNC3(task);
}