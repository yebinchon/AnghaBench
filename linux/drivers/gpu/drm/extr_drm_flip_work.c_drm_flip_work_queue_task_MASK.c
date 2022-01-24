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
struct drm_flip_work {int /*<<< orphan*/  lock; int /*<<< orphan*/  queued; } ;
struct drm_flip_task {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct drm_flip_work *work,
			      struct drm_flip_task *task)
{
	unsigned long flags;

	FUNC1(&work->lock, flags);
	FUNC0(&task->node, &work->queued);
	FUNC2(&work->lock, flags);
}