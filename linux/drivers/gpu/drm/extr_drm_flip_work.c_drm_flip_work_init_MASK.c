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
struct drm_flip_work {char const* name; int /*<<< orphan*/  worker; int /*<<< orphan*/  func; int /*<<< orphan*/  lock; int /*<<< orphan*/  commited; int /*<<< orphan*/  queued; } ;
typedef  int /*<<< orphan*/  drm_flip_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flip_worker ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct drm_flip_work *work,
		const char *name, drm_flip_func_t func)
{
	work->name = name;
	FUNC0(&work->queued);
	FUNC0(&work->commited);
	FUNC2(&work->lock);
	work->func = func;

	FUNC1(&work->worker, flip_worker);
}