#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nports; TYPE_4__* ports; int /*<<< orphan*/  guid; } ;
struct TYPE_6__ {TYPE_1__ link_addr; } ;
struct TYPE_7__ {scalar_t__ reply_type; TYPE_2__ u; } ;
struct drm_dp_sideband_msg_tx {TYPE_3__ reply; struct drm_dp_mst_branch* dst; } ;
struct drm_dp_mst_topology_mgr {int /*<<< orphan*/  dev; } ;
struct drm_dp_mst_branch {int link_address_sent; } ;
struct TYPE_8__ {int /*<<< orphan*/  num_sdp_stream_sinks; int /*<<< orphan*/  num_sdp_streams; int /*<<< orphan*/  legacy_device_plug_status; int /*<<< orphan*/  ddps; int /*<<< orphan*/  mcs; int /*<<< orphan*/  dpcd_revision; int /*<<< orphan*/  port_number; int /*<<< orphan*/  peer_device_type; int /*<<< orphan*/  input_port; } ;

/* Variables and functions */
 scalar_t__ DP_SIDEBAND_REPLY_NAK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct drm_dp_sideband_msg_tx*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_dp_mst_branch*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_dp_mst_branch*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_dp_mst_branch*,struct drm_dp_sideband_msg_tx*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_dp_mst_topology_mgr*,struct drm_dp_sideband_msg_tx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_dp_sideband_msg_tx*) ; 
 struct drm_dp_sideband_msg_tx* FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct drm_dp_mst_topology_mgr *mgr,
				     struct drm_dp_mst_branch *mstb)
{
	int len;
	struct drm_dp_sideband_msg_tx *txmsg;
	int ret;

	txmsg = FUNC8(sizeof(*txmsg), GFP_KERNEL);
	if (!txmsg)
		return;

	txmsg->dst = mstb;
	len = FUNC1(txmsg);

	mstb->link_address_sent = true;
	FUNC5(mgr, txmsg);

	ret = FUNC4(mstb, txmsg);
	if (ret > 0) {
		int i;

		if (txmsg->reply.reply_type == DP_SIDEBAND_REPLY_NAK) {
			FUNC0("link address nak received\n");
		} else {
			FUNC0("link address reply: %d\n", txmsg->reply.u.link_addr.nports);
			for (i = 0; i < txmsg->reply.u.link_addr.nports; i++) {
				FUNC0("port %d: input %d, pdt: %d, pn: %d, dpcd_rev: %02x, mcs: %d, ddps: %d, ldps %d, sdp %d/%d\n", i,
				       txmsg->reply.u.link_addr.ports[i].input_port,
				       txmsg->reply.u.link_addr.ports[i].peer_device_type,
				       txmsg->reply.u.link_addr.ports[i].port_number,
				       txmsg->reply.u.link_addr.ports[i].dpcd_revision,
				       txmsg->reply.u.link_addr.ports[i].mcs,
				       txmsg->reply.u.link_addr.ports[i].ddps,
				       txmsg->reply.u.link_addr.ports[i].legacy_device_plug_status,
				       txmsg->reply.u.link_addr.ports[i].num_sdp_streams,
				       txmsg->reply.u.link_addr.ports[i].num_sdp_stream_sinks);
			}

			FUNC3(mstb, txmsg->reply.u.link_addr.guid);

			for (i = 0; i < txmsg->reply.u.link_addr.nports; i++) {
				FUNC2(mstb, mgr->dev, &txmsg->reply.u.link_addr.ports[i]);
			}
			FUNC6(mgr->dev);
		}
	} else {
		mstb->link_address_sent = false;
		FUNC0("link address failed %d\n", ret);
	}

	FUNC7(txmsg);
}