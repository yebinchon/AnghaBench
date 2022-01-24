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
struct ib_mad_send_buf {struct ib_ah* ah; } ;
struct TYPE_6__ {int /*<<< orphan*/  grh; } ;
struct ib_mad_recv_wc {TYPE_3__ recv_buf; int /*<<< orphan*/  wc; } ;
struct ib_ah {int dummy; } ;
struct cm_port {int /*<<< orphan*/  port_num; TYPE_2__* mad_agent; } ;
struct TYPE_5__ {TYPE_1__* qp; } ;
struct TYPE_4__ {int /*<<< orphan*/  pd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ib_ah*) ; 
 int FUNC1 (struct ib_ah*) ; 
 struct ib_ah* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cm_port *port,
				     struct ib_mad_recv_wc *mad_recv_wc,
				     struct ib_mad_send_buf *msg)
{
	struct ib_ah *ah;

	ah = FUNC2(port->mad_agent->qp->pd, mad_recv_wc->wc,
				  mad_recv_wc->recv_buf.grh, port->port_num);
	if (FUNC0(ah))
		return FUNC1(ah);

	msg->ah = ah;
	return 0;
}