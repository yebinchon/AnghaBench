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
struct lima_sched_pipe {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lima_sched_pipe*) ; 

__attribute__((used)) static void FUNC2(struct lima_sched_pipe *pipe)
{
	if (FUNC0(&pipe->task))
		FUNC1(pipe);
}