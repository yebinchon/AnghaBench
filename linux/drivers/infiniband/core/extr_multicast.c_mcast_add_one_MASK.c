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
struct mcast_port {int port_num; int /*<<< orphan*/  refcount; int /*<<< orphan*/  comp; int /*<<< orphan*/  table; int /*<<< orphan*/  lock; struct mcast_device* dev; } ;
struct mcast_device {int start_port; int end_port; int /*<<< orphan*/  event_handler; struct ib_device* device; struct mcast_port* port; } ;
struct ib_device {int /*<<< orphan*/  phys_port_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*,int /*<<< orphan*/ *,struct mcast_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mcast_device*) ; 
 struct mcast_device* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcast_client ; 
 int /*<<< orphan*/  mcast_event_handler ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*,int) ; 
 int FUNC8 (struct ib_device*) ; 
 int FUNC9 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct mcast_device*,struct mcast_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct ib_device *device)
{
	struct mcast_device *dev;
	struct mcast_port *port;
	int i;
	int count = 0;

	dev = FUNC6(FUNC11(dev, port, device->phys_port_cnt),
		      GFP_KERNEL);
	if (!dev)
		return;

	dev->start_port = FUNC9(device);
	dev->end_port = FUNC8(device);

	for (i = 0; i <= dev->end_port - dev->start_port; i++) {
		if (!FUNC7(device, dev->start_port + i))
			continue;
		port = &dev->port[i];
		port->dev = dev;
		port->port_num = dev->start_port + i;
		FUNC10(&port->lock);
		port->table = RB_ROOT;
		FUNC4(&port->comp);
		FUNC1(&port->refcount, 1);
		++count;
	}

	if (!count) {
		FUNC5(dev);
		return;
	}

	dev->device = device;
	FUNC3(device, &mcast_client, dev);

	FUNC0(&dev->event_handler, device, mcast_event_handler);
	FUNC2(&dev->event_handler);
}