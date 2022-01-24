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
struct TYPE_2__ {scalar_t__ evicted; int /*<<< orphan*/ * pqm; int /*<<< orphan*/  dqm; int /*<<< orphan*/  priv_queue_list; int /*<<< orphan*/  queues_list; } ;
struct kfd_process_device {int already_dequeued; int /*<<< orphan*/  alloc_idr; int /*<<< orphan*/  per_device_list; int /*<<< orphan*/  bound; struct kfd_process* process; TYPE_1__ qpd; struct kfd_dev* dev; } ;
struct kfd_process {int /*<<< orphan*/  per_device_data; int /*<<< orphan*/  pqm; } ;
struct kfd_dev {int /*<<< orphan*/  dqm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PDD_UNBOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,struct kfd_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct kfd_process_device*) ; 
 struct kfd_process_device* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

struct kfd_process_device *FUNC7(struct kfd_dev *dev,
							struct kfd_process *p)
{
	struct kfd_process_device *pdd = NULL;

	pdd = FUNC4(sizeof(*pdd), GFP_KERNEL);
	if (!pdd)
		return NULL;

	if (FUNC2(&pdd->qpd, dev)) {
		FUNC6("Failed to init doorbell for process\n");
		FUNC3(pdd);
		return NULL;
	}

	pdd->dev = dev;
	FUNC0(&pdd->qpd.queues_list);
	FUNC0(&pdd->qpd.priv_queue_list);
	pdd->qpd.dqm = dev->dqm;
	pdd->qpd.pqm = &p->pqm;
	pdd->qpd.evicted = 0;
	pdd->process = p;
	pdd->bound = PDD_UNBOUND;
	pdd->already_dequeued = false;
	FUNC5(&pdd->per_device_list, &p->per_device_data);

	/* Init idr used for memory handle translation */
	FUNC1(&pdd->alloc_idr);

	return pdd;
}