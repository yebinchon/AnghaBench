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
struct rdma_restrack_entry {scalar_t__ type; int user; int /*<<< orphan*/ * kern_name; int /*<<< orphan*/ * task; } ;

/* Variables and functions */
 scalar_t__ RDMA_RESTRACK_CM_ID ; 
 scalar_t__ RDMA_RESTRACK_COUNTER ; 
 int /*<<< orphan*/  FUNC0 (struct rdma_restrack_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_restrack_entry*,int /*<<< orphan*/ *) ; 

void FUNC2(struct rdma_restrack_entry *res)
{
	if ((res->type != RDMA_RESTRACK_CM_ID) &&
	    (res->type != RDMA_RESTRACK_COUNTER))
		res->task = NULL;

	if (!res->task)
		FUNC1(res, NULL);
	res->kern_name = NULL;

	res->user = true;
	FUNC0(res);
}