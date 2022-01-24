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
struct exynos_drm_ipp_task {int /*<<< orphan*/  head; } ;
struct exynos_drm_ipp {int /*<<< orphan*/  lock; int /*<<< orphan*/  todo_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct exynos_drm_ipp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct exynos_drm_ipp *ipp,
					 struct exynos_drm_ipp_task *task)
{
	unsigned long flags;

	FUNC2(&ipp->lock, flags);
	FUNC1(&task->head, &ipp->todo_list);
	FUNC3(&ipp->lock, flags);

	FUNC0(ipp);
}