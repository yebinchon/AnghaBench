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
typedef  int /*<<< orphan*/  uint64_t ;
struct qcm_process_device {int /*<<< orphan*/  page_table_base; } ;
struct kfd_process_device {int /*<<< orphan*/  vm; } ;
struct TYPE_2__ {int (* update_qpd ) (struct device_queue_manager*,struct qcm_process_device*) ;} ;
struct device_queue_manager {int /*<<< orphan*/  dev; int /*<<< orphan*/  processes_count; TYPE_1__ asic_ops; int /*<<< orphan*/  queues; } ;
struct device_process_node {int /*<<< orphan*/  list; struct qcm_process_device* qpd; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device_queue_manager*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_queue_manager*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct device_process_node* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 struct kfd_process_device* FUNC7 (struct qcm_process_device*) ; 
 int FUNC8 (struct device_queue_manager*,struct qcm_process_device*) ; 

__attribute__((used)) static int FUNC9(struct device_queue_manager *dqm,
					struct qcm_process_device *qpd)
{
	struct device_process_node *n;
	struct kfd_process_device *pdd;
	uint64_t pd_base;
	int retval;

	n = FUNC4(sizeof(*n), GFP_KERNEL);
	if (!n)
		return -ENOMEM;

	n->qpd = qpd;

	pdd = FUNC7(qpd);
	/* Retrieve PD base */
	pd_base = FUNC0(pdd->vm);

	FUNC1(dqm);
	FUNC5(&n->list, &dqm->queues);

	/* Update PD Base in QPD */
	qpd->page_table_base = pd_base;
	FUNC6("Updated PD address to 0x%llx\n", pd_base);

	retval = dqm->asic_ops.update_qpd(dqm, qpd);

	dqm->processes_count++;

	FUNC2(dqm);

	/* Outside the DQM lock because under the DQM lock we can't do
	 * reclaim or take other locks that others hold while reclaiming.
	 */
	FUNC3(dqm->dev);

	return retval;
}