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
struct ocrdma_ucontext {TYPE_2__* cntxt_pd; } ;
struct ib_device {int dummy; } ;
struct ocrdma_dev {struct ib_device ibdev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {struct ib_device* device; } ;
struct TYPE_5__ {struct ib_device* device; } ;
struct TYPE_6__ {TYPE_1__ ibpd; struct ocrdma_ucontext* uctx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct ocrdma_dev*,TYPE_2__*,struct ocrdma_ucontext*,struct ib_udata*) ; 
 TYPE_2__* FUNC1 (struct ib_pd*) ; 
 int /*<<< orphan*/  ib_pd ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct ib_pd* FUNC3 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ocrdma_dev *dev,
				    struct ocrdma_ucontext *uctx,
				    struct ib_udata *udata)
{
	struct ib_device *ibdev = &dev->ibdev;
	struct ib_pd *pd;
	int status;

	pd = FUNC3(ibdev, ib_pd);
	if (!pd)
		return -ENOMEM;

	pd->device  = ibdev;
	uctx->cntxt_pd = FUNC1(pd);

	status = FUNC0(dev, uctx->cntxt_pd, uctx, udata);
	if (status) {
		FUNC2(uctx->cntxt_pd);
		goto err;
	}

	uctx->cntxt_pd->uctx = uctx;
	uctx->cntxt_pd->ibpd.device = &dev->ibdev;
err:
	return status;
}