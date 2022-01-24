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
struct srpt_port {int port; int /*<<< orphan*/ * mad_agent; } ;
struct srpt_device {TYPE_1__* device; struct srpt_port* port; } ;
struct ib_port_modify {int /*<<< orphan*/  clr_port_cap_mask; } ;
struct TYPE_2__ {int phys_port_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_PORT_DEVICE_MGMT_SUP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,struct ib_port_modify*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct srpt_device *sdev)
{
	struct ib_port_modify port_modify = {
		.clr_port_cap_mask = IB_PORT_DEVICE_MGMT_SUP,
	};
	struct srpt_port *sport;
	int i;

	for (i = 1; i <= sdev->device->phys_port_cnt; i++) {
		sport = &sdev->port[i - 1];
		FUNC0(sport->port != i);
		if (FUNC1(sdev->device, i, 0, &port_modify) < 0)
			FUNC3("disabling MAD processing failed.\n");
		if (sport->mad_agent) {
			FUNC2(sport->mad_agent);
			sport->mad_agent = NULL;
		}
	}
}