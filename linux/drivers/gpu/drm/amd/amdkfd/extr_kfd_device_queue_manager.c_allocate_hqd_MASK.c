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
struct queue {int pipe; int queue; } ;
struct device_queue_manager {int next_pipe_to_allocate; int* allocated_queues; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct device_queue_manager*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_queue_manager*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

__attribute__((used)) static int FUNC4(struct device_queue_manager *dqm, struct queue *q)
{
	bool set;
	int pipe, bit, i;

	set = false;

	for (pipe = dqm->next_pipe_to_allocate, i = 0;
			i < FUNC1(dqm);
			pipe = ((pipe + 1) % FUNC1(dqm)), ++i) {

		if (!FUNC2(dqm, 0, pipe))
			continue;

		if (dqm->allocated_queues[pipe] != 0) {
			bit = FUNC0(dqm->allocated_queues[pipe]) - 1;
			dqm->allocated_queues[pipe] &= ~(1 << bit);
			q->pipe = pipe;
			q->queue = bit;
			set = true;
			break;
		}
	}

	if (!set)
		return -EBUSY;

	FUNC3("hqd slot - pipe %d, queue %d\n", q->pipe, q->queue);
	/* horizontal hqd allocation */
	dqm->next_pipe_to_allocate = (pipe + 1) % FUNC1(dqm);

	return 0;
}