#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ib_udata {int dummy; } ;
struct TYPE_5__ {int (* create_cq ) (struct ib_cq*,struct ib_cq_init_attr*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* destroy_cq ) (struct ib_cq*,struct ib_udata*) ;} ;
struct ib_device {TYPE_1__ ops; } ;
struct ib_cq_init_attr {int cqe; int comp_vector; } ;
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
struct ib_cq {int poll_ctx; struct ib_cq* wc; struct ib_device* device; TYPE_2__ res; int /*<<< orphan*/  comp_wq; int /*<<< orphan*/  work; int /*<<< orphan*/  comp_handler; int /*<<< orphan*/  iop; int /*<<< orphan*/  usecnt; void* cq_context; } ;
typedef  enum ib_poll_context { ____Placeholder_ib_poll_context } ib_poll_context ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_cq* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int /*<<< orphan*/  IB_POLL_BATCH ; 
 int /*<<< orphan*/  IB_POLL_BUDGET_IRQ ; 
#define  IB_POLL_DIRECT 131 
#define  IB_POLL_SOFTIRQ 130 
#define  IB_POLL_UNBOUND_WORKQUEUE 129 
#define  IB_POLL_WORKQUEUE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_RESTRACK_CQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_comp_unbound_wq ; 
 int /*<<< orphan*/  ib_comp_wq ; 
 int /*<<< orphan*/  ib_cq ; 
 int /*<<< orphan*/  ib_cq_completion_direct ; 
 int /*<<< orphan*/  ib_cq_completion_softirq ; 
 int /*<<< orphan*/  ib_cq_completion_workqueue ; 
 int /*<<< orphan*/  ib_cq_poll_work ; 
 int /*<<< orphan*/  ib_poll_handler ; 
 int /*<<< orphan*/  FUNC3 (struct ib_cq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_cq*) ; 
 struct ib_cq* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_cq*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char const*) ; 
 struct ib_cq* FUNC11 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ib_cq*,struct ib_cq_init_attr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ib_cq*,struct ib_udata*) ; 

struct ib_cq *FUNC14(struct ib_device *dev, void *private,
				 int nr_cqe, int comp_vector,
				 enum ib_poll_context poll_ctx,
				 const char *caller, struct ib_udata *udata)
{
	struct ib_cq_init_attr cq_attr = {
		.cqe		= nr_cqe,
		.comp_vector	= comp_vector,
	};
	struct ib_cq *cq;
	int ret = -ENOMEM;

	cq = FUNC11(dev, ib_cq);
	if (!cq)
		return FUNC0(ret);

	cq->device = dev;
	cq->cq_context = private;
	cq->poll_ctx = poll_ctx;
	FUNC2(&cq->usecnt, 0);

	cq->wc = FUNC6(IB_POLL_BATCH, sizeof(*cq->wc), GFP_KERNEL);
	if (!cq->wc)
		goto out_free_cq;

	cq->res.type = RDMA_RESTRACK_CQ;
	FUNC10(&cq->res, caller);

	ret = dev->ops.create_cq(cq, &cq_attr, NULL);
	if (ret)
		goto out_free_wc;

	FUNC9(&cq->res);

	FUNC7(cq);

	switch (cq->poll_ctx) {
	case IB_POLL_DIRECT:
		cq->comp_handler = ib_cq_completion_direct;
		break;
	case IB_POLL_SOFTIRQ:
		cq->comp_handler = ib_cq_completion_softirq;

		FUNC4(&cq->iop, IB_POLL_BUDGET_IRQ, ib_poll_handler);
		FUNC3(cq, IB_CQ_NEXT_COMP);
		break;
	case IB_POLL_WORKQUEUE:
	case IB_POLL_UNBOUND_WORKQUEUE:
		cq->comp_handler = ib_cq_completion_workqueue;
		FUNC1(&cq->work, ib_cq_poll_work);
		FUNC3(cq, IB_CQ_NEXT_COMP);
		cq->comp_wq = (cq->poll_ctx == IB_POLL_WORKQUEUE) ?
				ib_comp_wq : ib_comp_unbound_wq;
		break;
	default:
		ret = -EINVAL;
		goto out_destroy_cq;
	}

	return cq;

out_destroy_cq:
	FUNC8(&cq->res);
	cq->device->ops.destroy_cq(cq, udata);
out_free_wc:
	FUNC5(cq->wc);
out_free_cq:
	FUNC5(cq);
	return FUNC0(ret);
}