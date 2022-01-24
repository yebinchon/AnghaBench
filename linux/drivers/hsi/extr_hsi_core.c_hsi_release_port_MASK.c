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
struct hsi_port {scalar_t__ claimed; int /*<<< orphan*/  lock; TYPE_1__ device; scalar_t__ shared; int /*<<< orphan*/  (* release ) (struct hsi_client*) ;} ;
struct hsi_client {scalar_t__ pclaimed; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct hsi_port* FUNC1 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hsi_client*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct hsi_client *cl)
{
	struct hsi_port *port = FUNC1(cl);

	FUNC3(&port->lock);
	/* Allow HW driver to do some cleanup */
	port->release(cl);
	if (cl->pclaimed)
		port->claimed--;
	FUNC0(port->claimed < 0);
	cl->pclaimed = 0;
	if (!port->claimed)
		port->shared = 0;
	FUNC2(FUNC6(port->device.parent)->owner);
	FUNC4(&port->lock);
}