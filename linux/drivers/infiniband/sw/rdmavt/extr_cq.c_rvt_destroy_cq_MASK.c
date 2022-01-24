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
struct rvt_dev_info {int /*<<< orphan*/  n_cqs_lock; int /*<<< orphan*/  n_cqs_allocated; } ;
struct rvt_cq {int /*<<< orphan*/  queue; TYPE_1__* ip; int /*<<< orphan*/  comptask; struct rvt_dev_info* rdi; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rvt_cq* FUNC1 (struct ib_cq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rvt_release_mmap_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct ib_cq *ibcq, struct ib_udata *udata)
{
	struct rvt_cq *cq = FUNC1(ibcq);
	struct rvt_dev_info *rdi = cq->rdi;

	FUNC0(&cq->comptask);
	FUNC3(&rdi->n_cqs_lock);
	rdi->n_cqs_allocated--;
	FUNC4(&rdi->n_cqs_lock);
	if (cq->ip)
		FUNC2(&cq->ip->ref, rvt_release_mmap_info);
	else
		FUNC5(cq->queue);
}