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
struct TYPE_2__ {scalar_t__ reply_type; } ;
struct drm_dp_sideband_msg_tx {TYPE_1__ reply; int /*<<< orphan*/  dst; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct drm_dp_mst_port {int /*<<< orphan*/  parent; int /*<<< orphan*/  port_num; } ;

/* Variables and functions */
 scalar_t__ DP_SIDEBAND_REPLY_NAK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct drm_dp_sideband_msg_tx*,int /*<<< orphan*/ ,int) ; 
 struct drm_dp_mst_port* FUNC1 (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_dp_mst_port*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct drm_dp_sideband_msg_tx*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_dp_mst_topology_mgr*,struct drm_dp_sideband_msg_tx*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_dp_sideband_msg_tx*) ; 
 struct drm_dp_sideband_msg_tx* FUNC6 (int,int /*<<< orphan*/ ) ; 

int FUNC7(struct drm_dp_mst_topology_mgr *mgr,
				 struct drm_dp_mst_port *port, bool power_up)
{
	struct drm_dp_sideband_msg_tx *txmsg;
	int len, ret;

	port = FUNC1(mgr, port);
	if (!port)
		return -EINVAL;

	txmsg = FUNC6(sizeof(*txmsg), GFP_KERNEL);
	if (!txmsg) {
		FUNC2(port);
		return -ENOMEM;
	}

	txmsg->dst = port->parent;
	len = FUNC0(txmsg, port->port_num, power_up);
	FUNC4(mgr, txmsg);

	ret = FUNC3(port->parent, txmsg);
	if (ret > 0) {
		if (txmsg->reply.reply_type == DP_SIDEBAND_REPLY_NAK)
			ret = -EINVAL;
		else
			ret = 0;
	}
	FUNC5(txmsg);
	FUNC2(port);

	return ret;
}