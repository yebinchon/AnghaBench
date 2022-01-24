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
struct timespec64 {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct exynos_drm_ipp_task {TYPE_3__* event; TYPE_1__* ipp; } ;
struct TYPE_5__ {int tv_usec; int /*<<< orphan*/  sequence; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_6__ {int /*<<< orphan*/  base; TYPE_2__ event; } ;
struct TYPE_4__ {int /*<<< orphan*/  drm_dev; int /*<<< orphan*/  sequence; } ;

/* Variables and functions */
 int NSEC_PER_USEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec64*) ; 

__attribute__((used)) static void FUNC3(struct exynos_drm_ipp_task *task)
{
	struct timespec64 now;

	FUNC2(&now);
	task->event->event.tv_sec = now.tv_sec;
	task->event->event.tv_usec = now.tv_nsec / NSEC_PER_USEC;
	task->event->event.sequence = FUNC0(&task->ipp->sequence);

	FUNC1(task->ipp->drm_dev, &task->event->base);
}