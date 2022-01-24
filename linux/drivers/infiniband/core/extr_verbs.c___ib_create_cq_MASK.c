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
struct TYPE_4__ {int (* create_cq ) (struct ib_cq*,struct ib_cq_init_attr const*,int /*<<< orphan*/ *) ;} ;
struct ib_device {TYPE_1__ ops; } ;
struct ib_cq_init_attr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
struct ib_cq {void (* event_handler ) (struct ib_event*,void*) ;TYPE_2__ res; int /*<<< orphan*/  usecnt; void* cq_context; int /*<<< orphan*/  comp_handler; int /*<<< orphan*/ * uobject; struct ib_device* device; } ;
typedef  int /*<<< orphan*/  ib_comp_handler ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_cq* FUNC0 (int) ; 
 int /*<<< orphan*/  RDMA_RESTRACK_CQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_cq ; 
 int /*<<< orphan*/  FUNC2 (struct ib_cq*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const*) ; 
 struct ib_cq* FUNC5 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ib_cq*,struct ib_cq_init_attr const*,int /*<<< orphan*/ *) ; 

struct ib_cq *FUNC7(struct ib_device *device,
			     ib_comp_handler comp_handler,
			     void (*event_handler)(struct ib_event *, void *),
			     void *cq_context,
			     const struct ib_cq_init_attr *cq_attr,
			     const char *caller)
{
	struct ib_cq *cq;
	int ret;

	cq = FUNC5(device, ib_cq);
	if (!cq)
		return FUNC0(-ENOMEM);

	cq->device = device;
	cq->uobject = NULL;
	cq->comp_handler = comp_handler;
	cq->event_handler = event_handler;
	cq->cq_context = cq_context;
	FUNC1(&cq->usecnt, 0);
	cq->res.type = RDMA_RESTRACK_CQ;
	FUNC4(&cq->res, caller);

	ret = device->ops.create_cq(cq, cq_attr, NULL);
	if (ret) {
		FUNC2(cq);
		return FUNC0(ret);
	}

	FUNC3(&cq->res);
	return cq;
}