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
struct ib_mad_agent {int /*<<< orphan*/  security; int /*<<< orphan*/  mad_agent_sec_list; TYPE_1__* qp; int /*<<< orphan*/  port_num; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {scalar_t__ qp_type; } ;

/* Variables and functions */
 scalar_t__ IB_QPT_SMI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mad_agent_list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ib_mad_agent *agent)
{
	if (!FUNC1(agent->device, agent->port_num))
		return;

	if (agent->qp->qp_type == IB_QPT_SMI) {
		FUNC3(&mad_agent_list_lock);
		FUNC0(&agent->mad_agent_sec_list);
		FUNC4(&mad_agent_list_lock);
	}

	FUNC2(agent->security);
}