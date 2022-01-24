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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {int /*<<< orphan*/  security; int /*<<< orphan*/  port_num; int /*<<< orphan*/  device; int /*<<< orphan*/  smp_allowed; TYPE_1__* qp; } ;
struct ib_mad_agent_private {TYPE_2__ agent; } ;
struct TYPE_3__ {scalar_t__ qp_type; } ;

/* Variables and functions */
 int EACCES ; 
 scalar_t__ IB_QPT_SMI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct ib_mad_agent_private *map, u16 pkey_index)
{
	if (!FUNC2(map->agent.device, map->agent.port_num))
		return 0;

	if (map->agent.qp->qp_type == IB_QPT_SMI) {
		if (!FUNC0(map->agent.smp_allowed))
			return -EACCES;
		return 0;
	}

	return FUNC1(map->agent.device,
				       map->agent.port_num,
				       pkey_index,
				       map->agent.security);
}