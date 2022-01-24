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
struct queue_properties {unsigned int queue_id; scalar_t__ vmid; int /*<<< orphan*/ * doorbell_ptr; } ;
struct queue {int /*<<< orphan*/  process; struct kfd_dev* device; } ;
struct process_queue_manager {int /*<<< orphan*/  process; } ;
struct kfd_dev {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct queue**,struct queue_properties*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct process_queue_manager *pqm,
				struct kfd_dev *dev, struct queue **q,
				struct queue_properties *q_properties,
				struct file *f, unsigned int qid)
{
	int retval;

	/* Doorbell initialized in user space*/
	q_properties->doorbell_ptr = NULL;

	/* let DQM handle it*/
	q_properties->vmid = 0;
	q_properties->queue_id = qid;

	retval = FUNC0(q, q_properties);
	if (retval != 0)
		return retval;

	(*q)->device = dev;
	(*q)->process = pqm->process;

	FUNC1("PQM After init queue");

	return retval;
}