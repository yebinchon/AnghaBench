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
struct device_queue_manager {int* allocated_queues; int vmid_bitmap; unsigned long long sdma_bitmap; unsigned long long xgmi_sdma_bitmap; TYPE_3__* dev; scalar_t__ xgmi_sdma_queue_count; scalar_t__ sdma_queue_count; scalar_t__ next_pipe_to_allocate; scalar_t__ queue_count; int /*<<< orphan*/  queues; int /*<<< orphan*/  lock_hidden; } ;
struct TYPE_5__ {int vmid_num_kfd; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue_bitmap; } ;
struct TYPE_6__ {TYPE_2__ vm_info; TYPE_1__ shared_resources; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device_queue_manager*) ; 
 int FUNC2 (struct device_queue_manager*) ; 
 int FUNC3 (struct device_queue_manager*) ; 
 int FUNC4 (struct device_queue_manager*) ; 
 int* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct device_queue_manager *dqm)
{
	int pipe, queue;

	FUNC7("num of pipes: %d\n", FUNC3(dqm));

	dqm->allocated_queues = FUNC5(FUNC3(dqm),
					sizeof(unsigned int), GFP_KERNEL);
	if (!dqm->allocated_queues)
		return -ENOMEM;

	FUNC6(&dqm->lock_hidden);
	FUNC0(&dqm->queues);
	dqm->queue_count = dqm->next_pipe_to_allocate = 0;
	dqm->sdma_queue_count = 0;
	dqm->xgmi_sdma_queue_count = 0;

	for (pipe = 0; pipe < FUNC3(dqm); pipe++) {
		int pipe_offset = pipe * FUNC4(dqm);

		for (queue = 0; queue < FUNC4(dqm); queue++)
			if (FUNC8(pipe_offset + queue,
				     dqm->dev->shared_resources.queue_bitmap))
				dqm->allocated_queues[pipe] |= 1 << queue;
	}

	dqm->vmid_bitmap = (1 << dqm->dev->vm_info.vmid_num_kfd) - 1;
	dqm->sdma_bitmap = ~0ULL >> (64 - FUNC1(dqm));
	dqm->xgmi_sdma_bitmap = ~0ULL >> (64 - FUNC2(dqm));

	return 0;
}