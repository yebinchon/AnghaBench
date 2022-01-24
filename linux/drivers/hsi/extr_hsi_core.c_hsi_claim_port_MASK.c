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
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct hsi_port {int shared; int /*<<< orphan*/  lock; scalar_t__ claimed; TYPE_1__ device; } ;
struct hsi_client {int pclaimed; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 struct hsi_port* FUNC0 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct hsi_client *cl, unsigned int share)
{
	struct hsi_port *port = FUNC0(cl);
	int err = 0;

	FUNC1(&port->lock);
	if ((port->claimed) && (!port->shared || !share)) {
		err = -EBUSY;
		goto out;
	}
	if (!FUNC4(FUNC3(port->device.parent)->owner)) {
		err = -ENODEV;
		goto out;
	}
	port->claimed++;
	port->shared = !!share;
	cl->pclaimed = 1;
out:
	FUNC2(&port->lock);

	return err;
}