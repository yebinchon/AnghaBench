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
struct qcm_process_device {int is_debug; } ;
struct kernel_queue {int /*<<< orphan*/  list; } ;
struct device_queue_manager {int /*<<< orphan*/  total_queue_count; int /*<<< orphan*/  queue_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  KFD_UNMAP_QUEUES_FILTER_ALL_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct device_queue_manager*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_queue_manager*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_queue_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct device_queue_manager *dqm,
					struct kernel_queue *kq,
					struct qcm_process_device *qpd)
{
	FUNC0(dqm);
	FUNC3(&kq->list);
	dqm->queue_count--;
	qpd->is_debug = false;
	FUNC2(dqm, KFD_UNMAP_QUEUES_FILTER_ALL_QUEUES, 0);
	/*
	 * Unconditionally decrement this counter, regardless of the queue's
	 * type.
	 */
	dqm->total_queue_count--;
	FUNC4("Total of %d queues are accountable so far\n",
			dqm->total_queue_count);
	FUNC1(dqm);
}