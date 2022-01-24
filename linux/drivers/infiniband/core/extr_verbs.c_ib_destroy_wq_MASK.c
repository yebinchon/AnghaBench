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
struct ib_wq {TYPE_2__* device; int /*<<< orphan*/  usecnt; struct ib_pd* pd; struct ib_cq* cq; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  usecnt; } ;
struct ib_cq {int /*<<< orphan*/  usecnt; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* destroy_wq ) (struct ib_wq*,struct ib_udata*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_wq*,struct ib_udata*) ; 

int FUNC3(struct ib_wq *wq, struct ib_udata *udata)
{
	struct ib_cq *cq = wq->cq;
	struct ib_pd *pd = wq->pd;

	if (FUNC1(&wq->usecnt))
		return -EBUSY;

	wq->device->ops.destroy_wq(wq, udata);
	FUNC0(&pd->usecnt);
	FUNC0(&cq->usecnt);

	return 0;
}