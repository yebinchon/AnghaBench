#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct process_queue_node {TYPE_5__* q; } ;
struct process_queue_manager {int /*<<< orphan*/  process; } ;
struct kgd_mem {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  num_gws; } ;
struct kfd_process_device {TYPE_2__ qpd; TYPE_1__* process; } ;
struct kfd_dev {TYPE_4__* dqm; int /*<<< orphan*/  kgd; } ;
struct TYPE_10__ {struct kfd_dev* device; struct kgd_mem* gws; } ;
struct TYPE_8__ {int (* update_queue ) (TYPE_4__*,TYPE_5__*) ;} ;
struct TYPE_9__ {TYPE_3__ ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  kgd_process_info; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,struct kgd_mem**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct kgd_mem*) ; 
 struct process_queue_node* FUNC4 (struct process_queue_manager*,unsigned int) ; 
 struct kfd_process_device* FUNC5 (struct kfd_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (TYPE_4__*,TYPE_5__*) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct process_queue_manager *pqm, unsigned int qid,
			void *gws)
{
	struct kfd_dev *dev = NULL;
	struct process_queue_node *pqn;
	struct kfd_process_device *pdd;
	struct kgd_mem *mem = NULL;
	int ret;

	pqn = FUNC4(pqm, qid);
	if (!pqn) {
		FUNC6("Queue id does not match any known queue\n");
		return -EINVAL;
	}

	if (pqn->q)
		dev = pqn->q->device;
	if (FUNC0(!dev))
		return -ENODEV;

	pdd = FUNC5(dev, pqm->process);
	if (!pdd) {
		FUNC6("Process device data doesn't exist\n");
		return -EINVAL;
	}

	/* Only allow one queue per process can have GWS assigned */
	if (gws && pdd->qpd.num_gws)
		return -EBUSY;

	if (!gws && pdd->qpd.num_gws == 0)
		return -EINVAL;

	if (gws)
		ret = FUNC1(pdd->process->kgd_process_info,
			gws, &mem);
	else
		ret = FUNC3(pdd->process->kgd_process_info,
			pqn->q->gws);
	if (FUNC8(ret))
		return ret;

	pqn->q->gws = mem;
	pdd->qpd.num_gws = gws ? FUNC2(dev->kgd) : 0;

	return pqn->q->device->dqm->ops.update_queue(pqn->q->device->dqm,
							pqn->q);
}