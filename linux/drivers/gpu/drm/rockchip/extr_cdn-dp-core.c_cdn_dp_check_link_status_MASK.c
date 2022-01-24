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
typedef  int /*<<< orphan*/  u8 ;
struct cdn_dp_port {int /*<<< orphan*/  lanes; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_lanes; int /*<<< orphan*/  rate; } ;
struct cdn_dp_device {TYPE_1__ link; int /*<<< orphan*/  dpcd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_LANE0_1_STATUS ; 
 int DP_LINK_STATUS_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct cdn_dp_port* FUNC1 (struct cdn_dp_device*) ; 
 scalar_t__ FUNC2 (struct cdn_dp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct cdn_dp_device *dp)
{
	u8 link_status[DP_LINK_STATUS_SIZE];
	struct cdn_dp_port *port = FUNC1(dp);
	u8 sink_lanes = FUNC4(dp->dpcd);

	if (!port || !dp->link.rate || !dp->link.num_lanes)
		return false;

	if (FUNC2(dp, DP_LANE0_1_STATUS, link_status,
			     DP_LINK_STATUS_SIZE)) {
		FUNC0("Failed to get link status\n");
		return false;
	}

	/* if link training is requested we should perform it always */
	return FUNC3(link_status, FUNC5(port->lanes, sink_lanes));
}