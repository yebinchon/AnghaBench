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
typedef  int /*<<< orphan*/  u32 ;
struct rdma_counter {int /*<<< orphan*/  id; } ;
struct ib_qp {size_t port; int /*<<< orphan*/  res; } ;
struct ib_device {TYPE_2__* port_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  hstats; } ;
struct TYPE_4__ {TYPE_1__ port_counter; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  RDMA_COUNTER_MODE_MANUAL ; 
 struct rdma_counter* FUNC0 (struct ib_device*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rdma_counter*,struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_counter*) ; 
 struct ib_qp* FUNC3 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_counter*,struct ib_qp*) ; 
 scalar_t__ FUNC5 (struct ib_device*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct ib_device *dev, u8 port,
				u32 qp_num, u32 *counter_id)
{
	struct rdma_counter *counter;
	struct ib_qp *qp;
	int ret;

	if (!FUNC5(dev, port))
		return -EINVAL;

	if (!dev->port_data[port].port_counter.hstats)
		return -EOPNOTSUPP;

	qp = FUNC3(dev, qp_num);
	if (!qp)
		return -ENOENT;

	if (FUNC5(dev, qp->port) && (qp->port != port)) {
		ret = -EINVAL;
		goto err;
	}

	counter = FUNC0(dev, port, RDMA_COUNTER_MODE_MANUAL);
	if (!counter) {
		ret = -ENOMEM;
		goto err;
	}

	ret = FUNC1(counter, qp);
	if (ret)
		goto err_bind;

	if (counter_id)
		*counter_id = counter->id;

	FUNC4(counter, qp);

	FUNC6(&qp->res);
	return ret;

err_bind:
	FUNC2(counter);
err:
	FUNC6(&qp->res);
	return ret;
}