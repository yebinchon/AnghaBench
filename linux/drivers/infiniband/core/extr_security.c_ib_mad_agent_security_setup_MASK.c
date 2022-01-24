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
struct ib_mad_agent {int /*<<< orphan*/  security; int /*<<< orphan*/  mad_agent_sec_list; int /*<<< orphan*/  smp_allowed; int /*<<< orphan*/  port_num; TYPE_1__* device; } ;
typedef  enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IB_QPT_SMI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mad_agent_list ; 
 int /*<<< orphan*/  mad_agent_list_lock ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct ib_mad_agent *agent,
				enum ib_qp_type qp_type)
{
	int ret;

	if (!FUNC4(agent->device, agent->port_num))
		return 0;

	FUNC0(&agent->mad_agent_sec_list);

	ret = FUNC5(&agent->security);
	if (ret)
		return ret;

	if (qp_type != IB_QPT_SMI)
		return 0;

	FUNC8(&mad_agent_list_lock);
	ret = FUNC6(agent->security,
						FUNC2(&agent->device->dev),
						agent->port_num);
	if (ret)
		goto free_security;

	FUNC1(agent->smp_allowed, true);
	FUNC3(&agent->mad_agent_sec_list, &mad_agent_list);
	FUNC9(&mad_agent_list_lock);
	return 0;

free_security:
	FUNC9(&mad_agent_list_lock);
	FUNC7(agent->security);
	return ret;
}