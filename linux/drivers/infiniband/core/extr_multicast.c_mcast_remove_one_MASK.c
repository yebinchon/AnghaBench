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
struct mcast_port {int /*<<< orphan*/  comp; } ;
struct mcast_device {int end_port; int start_port; struct mcast_port* port; int /*<<< orphan*/  event_handler; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mcast_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mcast_device*) ; 
 int /*<<< orphan*/  mcast_wq ; 
 scalar_t__ FUNC4 (struct ib_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ib_device *device, void *client_data)
{
	struct mcast_device *dev = client_data;
	struct mcast_port *port;
	int i;

	if (!dev)
		return;

	FUNC2(&dev->event_handler);
	FUNC1(mcast_wq);

	for (i = 0; i <= dev->end_port - dev->start_port; i++) {
		if (FUNC4(device, dev->start_port + i)) {
			port = &dev->port[i];
			FUNC0(port);
			FUNC5(&port->comp);
		}
	}

	FUNC3(dev);
}