#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct pvrdma_dev {int ib_active; int /*<<< orphan*/  port_mutex; int /*<<< orphan*/  port_cap_mask; TYPE_1__* pdev; } ;
struct ib_port_modify {int /*<<< orphan*/  clr_port_cap_mask; int /*<<< orphan*/  set_port_cap_mask; } ;
struct ib_port_attr {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int IB_PORT_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct ib_device*,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pvrdma_dev* FUNC4 (struct ib_device*) ; 

int FUNC5(struct ib_device *ibdev, u8 port, int mask,
		       struct ib_port_modify *props)
{
	struct ib_port_attr attr;
	struct pvrdma_dev *vdev = FUNC4(ibdev);
	int ret;

	if (mask & ~IB_PORT_SHUTDOWN) {
		FUNC0(&vdev->pdev->dev,
			 "unsupported port modify mask %#x\n", mask);
		return -EOPNOTSUPP;
	}

	FUNC2(&vdev->port_mutex);
	ret = FUNC1(ibdev, port, &attr);
	if (ret)
		goto out;

	vdev->port_cap_mask |= props->set_port_cap_mask;
	vdev->port_cap_mask &= ~props->clr_port_cap_mask;

	if (mask & IB_PORT_SHUTDOWN)
		vdev->ib_active = false;

out:
	FUNC3(&vdev->port_mutex);
	return ret;
}