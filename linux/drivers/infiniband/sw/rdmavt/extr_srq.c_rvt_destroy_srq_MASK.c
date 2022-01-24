#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kwq; } ;
struct rvt_srq {TYPE_1__ rq; TYPE_2__* ip; } ;
struct rvt_dev_info {int /*<<< orphan*/  n_srqs_lock; int /*<<< orphan*/  n_srqs_allocated; } ;
struct ib_udata {int dummy; } ;
struct ib_srq {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 struct rvt_dev_info* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rvt_srq* FUNC1 (struct ib_srq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rvt_release_mmap_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct ib_srq *ibsrq, struct ib_udata *udata)
{
	struct rvt_srq *srq = FUNC1(ibsrq);
	struct rvt_dev_info *dev = FUNC0(ibsrq->device);

	FUNC4(&dev->n_srqs_lock);
	dev->n_srqs_allocated--;
	FUNC5(&dev->n_srqs_lock);
	if (srq->ip)
		FUNC2(&srq->ip->ref, rvt_release_mmap_info);
	FUNC3(srq->rq.kwq);
}