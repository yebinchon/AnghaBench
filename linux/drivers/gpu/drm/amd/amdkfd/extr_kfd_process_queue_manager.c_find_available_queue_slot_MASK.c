#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct process_queue_manager {int /*<<< orphan*/  queue_slot_bitmap; TYPE_1__* process; } ;
struct TYPE_2__ {int /*<<< orphan*/  pasid; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long KFD_MAX_NUM_OF_QUEUES_PER_PROCESS ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct process_queue_manager *pqm,
					unsigned int *qid)
{
	unsigned long found;

	found = FUNC0(pqm->queue_slot_bitmap,
			KFD_MAX_NUM_OF_QUEUES_PER_PROCESS);

	FUNC1("The new slot id %lu\n", found);

	if (found >= KFD_MAX_NUM_OF_QUEUES_PER_PROCESS) {
		FUNC2("Cannot open more queues for process with pasid %d\n",
				pqm->process->pasid);
		return -ENOMEM;
	}

	FUNC3(found, pqm->queue_slot_bitmap);
	*qid = found;

	return 0;
}