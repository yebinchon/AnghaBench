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
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct rxe_port {TYPE_1__ attr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct rxe_dev {TYPE_2__ ib_dev; struct rxe_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_PORT_ERR ; 
 int /*<<< orphan*/  IB_PORT_DOWN ; 
 int /*<<< orphan*/  RXE_CNT_LINK_DOWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rxe_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rxe_dev*,int /*<<< orphan*/ ) ; 

void FUNC3(struct rxe_dev *rxe)
{
	struct rxe_port *port;

	port = &rxe->port;
	port->attr.state = IB_PORT_DOWN;

	FUNC2(rxe, IB_EVENT_PORT_ERR);
	FUNC1(rxe, RXE_CNT_LINK_DOWNED);
	FUNC0(&rxe->ib_dev.dev, "set down\n");
}