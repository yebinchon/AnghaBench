#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ mode; } ;
struct rdma_port_counter {TYPE_3__ mode; } ;
struct ib_qp {scalar_t__ port; int /*<<< orphan*/  res; TYPE_2__* counter; } ;
struct ib_device {TYPE_1__* port_data; } ;
struct TYPE_5__ {scalar_t__ id; } ;
struct TYPE_4__ {struct rdma_port_counter port_counter; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ RDMA_COUNTER_MODE_MANUAL ; 
 struct ib_qp* FUNC0 (struct ib_device*,scalar_t__) ; 
 int FUNC1 (struct ib_qp*,int) ; 
 scalar_t__ FUNC2 (struct ib_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ib_device *dev, u8 port,
			    u32 qp_num, u32 counter_id)
{
	struct rdma_port_counter *port_counter;
	struct ib_qp *qp;
	int ret;

	if (!FUNC2(dev, port))
		return -EINVAL;

	qp = FUNC0(dev, qp_num);
	if (!qp)
		return -ENOENT;

	if (FUNC2(dev, qp->port) && (qp->port != port)) {
		ret = -EINVAL;
		goto out;
	}

	port_counter = &dev->port_data[port].port_counter;
	if (!qp->counter || qp->counter->id != counter_id ||
	    port_counter->mode.mode != RDMA_COUNTER_MODE_MANUAL) {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC1(qp, false);

out:
	FUNC3(&qp->res);
	return ret;
}