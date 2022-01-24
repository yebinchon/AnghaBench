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
struct process_queue_node {struct kernel_queue* kq; } ;
struct process_queue_manager {int dummy; } ;
struct kernel_queue {int dummy; } ;

/* Variables and functions */
 struct process_queue_node* FUNC0 (struct process_queue_manager*,unsigned int) ; 

struct kernel_queue *FUNC1(
					struct process_queue_manager *pqm,
					unsigned int qid)
{
	struct process_queue_node *pqn;

	pqn = FUNC0(pqm, qid);
	if (pqn && pqn->kq)
		return pqn->kq;

	return NULL;
}