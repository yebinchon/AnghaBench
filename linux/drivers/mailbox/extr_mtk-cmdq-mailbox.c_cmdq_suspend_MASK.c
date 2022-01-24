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
struct device {int dummy; } ;
struct cmdq_thread {int /*<<< orphan*/  task_busy_list; } ;
struct cmdq {int suspended; int thread_nr; int /*<<< orphan*/  clock; struct cmdq_thread* thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct cmdq* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct cmdq *cmdq = FUNC1(dev);
	struct cmdq_thread *thread;
	int i;
	bool task_running = false;

	cmdq->suspended = true;

	for (i = 0; i < cmdq->thread_nr; i++) {
		thread = &cmdq->thread[i];
		if (!FUNC3(&thread->task_busy_list)) {
			task_running = true;
			break;
		}
	}

	if (task_running)
		FUNC2(dev, "exist running task(s) in suspend\n");

	FUNC0(cmdq->clock);

	return 0;
}