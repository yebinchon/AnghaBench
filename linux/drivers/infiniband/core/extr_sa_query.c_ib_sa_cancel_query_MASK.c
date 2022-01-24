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
struct ib_sa_query {struct ib_mad_send_buf* mad_buf; TYPE_1__* port; } ;
struct ib_mad_send_buf {int dummy; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_2__ {struct ib_mad_agent* agent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_mad_agent*,struct ib_mad_send_buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_sa_query*) ; 
 int /*<<< orphan*/  queries ; 
 struct ib_sa_query* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(int id, struct ib_sa_query *query)
{
	unsigned long flags;
	struct ib_mad_agent *agent;
	struct ib_mad_send_buf *mad_buf;

	FUNC3(&queries, flags);
	if (FUNC2(&queries, id) != query) {
		FUNC4(&queries, flags);
		return;
	}
	agent = query->port->agent;
	mad_buf = query->mad_buf;
	FUNC4(&queries, flags);

	/*
	 * If the query is still on the netlink request list, schedule
	 * it to be cancelled by the timeout routine. Otherwise, it has been
	 * sent to the MAD layer and has to be cancelled from there.
	 */
	if (!FUNC1(query))
		FUNC0(agent, mad_buf);
}