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
typedef  size_t u8 ;
struct TYPE_4__ {scalar_t__ mode; int /*<<< orphan*/  mask; } ;
struct rdma_port_counter {TYPE_2__ mode; } ;
struct rdma_counter {int /*<<< orphan*/  kref; } ;
struct ib_qp {struct ib_device* device; } ;
struct ib_device {TYPE_1__* port_data; } ;
struct TYPE_3__ {struct rdma_port_counter port_counter; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ RDMA_COUNTER_MODE_AUTO ; 
 int FUNC0 (struct rdma_counter*,struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_counter*,struct ib_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  counter_release ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rdma_counter* FUNC3 (struct ib_device*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_counter*) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_counter*,struct ib_qp*) ; 
 struct rdma_counter* FUNC6 (struct ib_qp*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*,size_t) ; 

int FUNC8(struct ib_qp *qp, u8 port)
{
	struct rdma_port_counter *port_counter;
	struct ib_device *dev = qp->device;
	struct rdma_counter *counter;
	int ret;

	if (!FUNC7(dev, port))
		return -EINVAL;

	port_counter = &dev->port_data[port].port_counter;
	if (port_counter->mode.mode != RDMA_COUNTER_MODE_AUTO)
		return 0;

	counter = FUNC6(qp, port);
	if (counter) {
		ret = FUNC0(counter, qp);
		if (ret) {
			FUNC2(&counter->kref, counter_release);
			return ret;
		}
	} else {
		counter = FUNC3(dev, port, RDMA_COUNTER_MODE_AUTO);
		if (!counter)
			return -ENOMEM;

		FUNC1(counter, qp, port_counter->mode.mask);

		ret = FUNC0(counter, qp);
		if (ret) {
			FUNC4(counter);
			return ret;
		}

		FUNC5(counter, qp);
	}

	return 0;
}