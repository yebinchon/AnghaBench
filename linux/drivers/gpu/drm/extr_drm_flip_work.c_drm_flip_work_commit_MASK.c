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
struct workqueue_struct {int dummy; } ;
struct drm_flip_work {int /*<<< orphan*/  worker; int /*<<< orphan*/  lock; int /*<<< orphan*/  queued; int /*<<< orphan*/  commited; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct workqueue_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct drm_flip_work *work,
		struct workqueue_struct *wq)
{
	unsigned long flags;

	FUNC3(&work->lock, flags);
	FUNC1(&work->queued, &work->commited);
	FUNC0(&work->queued);
	FUNC4(&work->lock, flags);
	FUNC2(wq, &work->worker);
}