#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct rvt_rwq {int dummy; } ;
struct rvt_rq {TYPE_1__* kwq; TYPE_2__* wq; } ;
struct rvt_krwq {int dummy; } ;
struct ib_udata {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  wq; } ;
struct TYPE_4__ {int /*<<< orphan*/  c_lock; int /*<<< orphan*/  p_lock; int /*<<< orphan*/  wq; int /*<<< orphan*/  curr_wq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_rq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (scalar_t__) ; 
 TYPE_1__* FUNC4 (scalar_t__,int) ; 

int FUNC5(struct rvt_rq *rq, u32 size, int node,
		 struct ib_udata *udata)
{
	if (udata) {
		rq->wq = FUNC3(sizeof(struct rvt_rwq) + size);
		if (!rq->wq)
			goto bail;
		/* need kwq with no buffers */
		rq->kwq = FUNC0(sizeof(*rq->kwq), GFP_KERNEL, node);
		if (!rq->kwq)
			goto bail;
		rq->kwq->curr_wq = rq->wq->wq;
	} else {
		/* need kwq with buffers */
		rq->kwq =
			FUNC4(sizeof(struct rvt_krwq) + size, node);
		if (!rq->kwq)
			goto bail;
		rq->kwq->curr_wq = rq->kwq->wq;
	}

	FUNC2(&rq->kwq->p_lock);
	FUNC2(&rq->kwq->c_lock);
	return 0;
bail:
	FUNC1(rq);
	return -ENOMEM;
}