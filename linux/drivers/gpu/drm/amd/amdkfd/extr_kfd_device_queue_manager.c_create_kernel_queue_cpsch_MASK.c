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
struct qcm_process_device {int is_debug; int /*<<< orphan*/  priv_queue_list; } ;
struct kernel_queue {int /*<<< orphan*/  list; } ;
struct device_queue_manager {scalar_t__ total_queue_count; int /*<<< orphan*/  queue_count; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct device_queue_manager*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_queue_manager*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_queue_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ max_num_of_queues_per_device ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct device_queue_manager *dqm,
					struct kernel_queue *kq,
					struct qcm_process_device *qpd)
{
	FUNC0(dqm);
	if (dqm->total_queue_count >= max_num_of_queues_per_device) {
		FUNC5("Can't create new kernel queue because %d queues were already created\n",
				dqm->total_queue_count);
		FUNC1(dqm);
		return -EPERM;
	}

	/*
	 * Unconditionally increment this counter, regardless of the queue's
	 * type or whether the queue is active.
	 */
	dqm->total_queue_count++;
	FUNC4("Total of %d queues are accountable so far\n",
			dqm->total_queue_count);

	FUNC3(&kq->list, &qpd->priv_queue_list);
	dqm->queue_count++;
	qpd->is_debug = true;
	FUNC2(dqm, KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES, 0);
	FUNC1(dqm);

	return 0;
}