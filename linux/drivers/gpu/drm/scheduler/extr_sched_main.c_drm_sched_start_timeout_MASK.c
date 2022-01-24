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
struct drm_gpu_scheduler {scalar_t__ timeout; int /*<<< orphan*/  work_tdr; int /*<<< orphan*/  ring_mirror_list; } ;

/* Variables and functions */
 scalar_t__ MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct drm_gpu_scheduler *sched)
{
	if (sched->timeout != MAX_SCHEDULE_TIMEOUT &&
	    !FUNC0(&sched->ring_mirror_list))
		FUNC1(&sched->work_tdr, sched->timeout);
}