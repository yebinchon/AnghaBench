#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ib_port_attr {scalar_t__ state; int /*<<< orphan*/  phys_state; int /*<<< orphan*/  active_width; int /*<<< orphan*/  active_speed; } ;
struct rxe_port {struct ib_port_attr attr; } ;
struct rxe_dev {int /*<<< orphan*/  usdev_lock; int /*<<< orphan*/  ndev; struct rxe_port port; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ IB_PORT_ACTIVE ; 
 int /*<<< orphan*/  IB_PORT_PHYS_STATE_DISABLED ; 
 int /*<<< orphan*/  IB_PORT_PHYS_STATE_LINK_UP ; 
 int /*<<< orphan*/  IB_PORT_PHYS_STATE_POLLING ; 
 int IFF_UP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rxe_dev* FUNC4 (struct ib_device*) ; 

__attribute__((used)) static int FUNC5(struct ib_device *dev,
			  u8 port_num, struct ib_port_attr *attr)
{
	struct rxe_dev *rxe = FUNC4(dev);
	struct rxe_port *port;
	int rc;

	port = &rxe->port;

	/* *attr being zeroed by the caller, avoid zeroing it here */
	*attr = port->attr;

	FUNC2(&rxe->usdev_lock);
	rc = FUNC1(dev, port_num, &attr->active_speed,
			      &attr->active_width);

	if (attr->state == IB_PORT_ACTIVE)
		attr->phys_state = IB_PORT_PHYS_STATE_LINK_UP;
	else if (FUNC0(rxe->ndev) & IFF_UP)
		attr->phys_state = IB_PORT_PHYS_STATE_POLLING;
	else
		attr->phys_state = IB_PORT_PHYS_STATE_DISABLED;

	FUNC3(&rxe->usdev_lock);

	return rc;
}