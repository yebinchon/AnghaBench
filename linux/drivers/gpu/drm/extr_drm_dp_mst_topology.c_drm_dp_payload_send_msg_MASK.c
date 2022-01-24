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
typedef  int u8 ;
struct TYPE_2__ {scalar_t__ reply_type; } ;
struct drm_dp_sideband_msg_tx {TYPE_1__ reply; struct drm_dp_mst_branch* dst; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct drm_dp_mst_port {int port_num; int num_sdp_streams; int /*<<< orphan*/  parent; } ;
struct drm_dp_mst_branch {int dummy; } ;

/* Variables and functions */
 scalar_t__ DP_SIDEBAND_REPLY_NAK ; 
 int DRM_DP_MAX_SDP_STREAMS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct drm_dp_sideband_msg_tx*,int,int,int,int,int*) ; 
 struct drm_dp_mst_branch* FUNC1 (struct drm_dp_mst_topology_mgr*,int /*<<< orphan*/ ,int*) ; 
 struct drm_dp_mst_branch* FUNC2 (struct drm_dp_mst_topology_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_dp_mst_branch*) ; 
 int FUNC4 (struct drm_dp_mst_branch*,struct drm_dp_sideband_msg_tx*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_dp_mst_topology_mgr*,struct drm_dp_sideband_msg_tx*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_dp_sideband_msg_tx*) ; 
 struct drm_dp_sideband_msg_tx* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct drm_dp_mst_topology_mgr *mgr,
				   struct drm_dp_mst_port *port,
				   int id,
				   int pbn)
{
	struct drm_dp_sideband_msg_tx *txmsg;
	struct drm_dp_mst_branch *mstb;
	int len, ret, port_num;
	u8 sinks[DRM_DP_MAX_SDP_STREAMS];
	int i;

	port_num = port->port_num;
	mstb = FUNC2(mgr, port->parent);
	if (!mstb) {
		mstb = FUNC1(mgr,
							       port->parent,
							       &port_num);

		if (!mstb)
			return -EINVAL;
	}

	txmsg = FUNC7(sizeof(*txmsg), GFP_KERNEL);
	if (!txmsg) {
		ret = -ENOMEM;
		goto fail_put;
	}

	for (i = 0; i < port->num_sdp_streams; i++)
		sinks[i] = i;

	txmsg->dst = mstb;
	len = FUNC0(txmsg, port_num,
				     id,
				     pbn, port->num_sdp_streams, sinks);

	FUNC5(mgr, txmsg);

	/*
	 * FIXME: there is a small chance that between getting the last
	 * connected mstb and sending the payload message, the last connected
	 * mstb could also be removed from the topology. In the future, this
	 * needs to be fixed by restarting the
	 * drm_dp_get_last_connected_port_and_mstb() search in the event of a
	 * timeout if the topology is still connected to the system.
	 */
	ret = FUNC4(mstb, txmsg);
	if (ret > 0) {
		if (txmsg->reply.reply_type == DP_SIDEBAND_REPLY_NAK)
			ret = -EINVAL;
		else
			ret = 0;
	}
	FUNC6(txmsg);
fail_put:
	FUNC3(mstb);
	return ret;
}