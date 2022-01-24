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
struct lima_sched_pipe {int /*<<< orphan*/  base; int /*<<< orphan*/  error_work; int /*<<< orphan*/  fence_lock; int /*<<< orphan*/  fence_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  lima_sched_error_work ; 
 int /*<<< orphan*/  lima_sched_ops ; 
 int lima_sched_timeout_ms ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct lima_sched_pipe *pipe, const char *name)
{
	unsigned int timeout = lima_sched_timeout_ms > 0 ?
			       lima_sched_timeout_ms : 500;

	pipe->fence_context = FUNC1(1);
	FUNC4(&pipe->fence_lock);

	FUNC0(&pipe->error_work, lima_sched_error_work);

	return FUNC2(&pipe->base, &lima_sched_ops, 1, 0,
			      FUNC3(timeout), name);
}