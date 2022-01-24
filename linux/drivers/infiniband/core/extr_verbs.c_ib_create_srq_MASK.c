#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_4__* xrcd; } ;
struct TYPE_10__ {TYPE_1__ xrc; TYPE_6__* cq; } ;
struct ib_srq_init_attr {scalar_t__ srq_type; TYPE_2__ ext; int /*<<< orphan*/  srq_context; int /*<<< orphan*/  event_handler; } ;
struct TYPE_13__ {TYPE_4__* xrcd; } ;
struct TYPE_15__ {TYPE_6__* cq; TYPE_5__ xrc; } ;
struct ib_srq {scalar_t__ srq_type; TYPE_7__ ext; struct ib_pd* pd; int /*<<< orphan*/  srq_context; int /*<<< orphan*/  event_handler; TYPE_8__* device; } ;
struct ib_pd {int /*<<< orphan*/  usecnt; TYPE_8__* device; } ;
struct TYPE_11__ {int (* create_srq ) (struct ib_srq*,struct ib_srq_init_attr*,int /*<<< orphan*/ *) ;} ;
struct TYPE_16__ {TYPE_3__ ops; } ;
struct TYPE_14__ {int /*<<< orphan*/  usecnt; } ;
struct TYPE_12__ {int /*<<< orphan*/  usecnt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct ib_srq* FUNC0 (int) ; 
 scalar_t__ IB_SRQT_XRC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ib_srq ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_srq*) ; 
 struct ib_srq* FUNC5 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ib_srq*,struct ib_srq_init_attr*,int /*<<< orphan*/ *) ; 

struct ib_srq *FUNC7(struct ib_pd *pd,
			     struct ib_srq_init_attr *srq_init_attr)
{
	struct ib_srq *srq;
	int ret;

	if (!pd->device->ops.create_srq)
		return FUNC0(-EOPNOTSUPP);

	srq = FUNC5(pd->device, ib_srq);
	if (!srq)
		return FUNC0(-ENOMEM);

	srq->device = pd->device;
	srq->pd = pd;
	srq->event_handler = srq_init_attr->event_handler;
	srq->srq_context = srq_init_attr->srq_context;
	srq->srq_type = srq_init_attr->srq_type;

	if (FUNC3(srq->srq_type)) {
		srq->ext.cq = srq_init_attr->ext.cq;
		FUNC2(&srq->ext.cq->usecnt);
	}
	if (srq->srq_type == IB_SRQT_XRC) {
		srq->ext.xrc.xrcd = srq_init_attr->ext.xrc.xrcd;
		FUNC2(&srq->ext.xrc.xrcd->usecnt);
	}
	FUNC2(&pd->usecnt);

	ret = pd->device->ops.create_srq(srq, srq_init_attr, NULL);
	if (ret) {
		FUNC1(&srq->pd->usecnt);
		if (srq->srq_type == IB_SRQT_XRC)
			FUNC1(&srq->ext.xrc.xrcd->usecnt);
		if (FUNC3(srq->srq_type))
			FUNC1(&srq->ext.cq->usecnt);
		FUNC4(srq);
		return FUNC0(ret);
	}

	return srq;
}