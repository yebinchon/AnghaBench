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
struct TYPE_2__ {scalar_t__ reply_type; } ;
struct drm_dp_sideband_msg_tx {TYPE_1__ reply; struct drm_dp_mst_branch* dst; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct drm_dp_mst_port {int /*<<< orphan*/  port_num; int /*<<< orphan*/  parent; } ;
struct drm_dp_mst_branch {int dummy; } ;

/* Variables and functions */
 scalar_t__ DP_SIDEBAND_REPLY_NAK ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct drm_dp_sideband_msg_tx*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 struct drm_dp_mst_branch* FUNC1 (struct drm_dp_mst_topology_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_dp_mst_branch*) ; 
 int FUNC3 (struct drm_dp_mst_branch*,struct drm_dp_sideband_msg_tx*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_dp_mst_topology_mgr*,struct drm_dp_sideband_msg_tx*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_dp_sideband_msg_tx*) ; 
 struct drm_dp_sideband_msg_tx* FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct drm_dp_mst_topology_mgr *mgr,
				  struct drm_dp_mst_port *port,
				  int offset, int size, u8 *bytes)
{
	int len;
	int ret;
	struct drm_dp_sideband_msg_tx *txmsg;
	struct drm_dp_mst_branch *mstb;

	mstb = FUNC1(mgr, port->parent);
	if (!mstb)
		return -EINVAL;

	txmsg = FUNC6(sizeof(*txmsg), GFP_KERNEL);
	if (!txmsg) {
		ret = -ENOMEM;
		goto fail_put;
	}

	len = FUNC0(txmsg, port->port_num, offset, size, bytes);
	txmsg->dst = mstb;

	FUNC4(mgr, txmsg);

	ret = FUNC3(mstb, txmsg);
	if (ret > 0) {
		if (txmsg->reply.reply_type == DP_SIDEBAND_REPLY_NAK)
			ret = -EIO;
		else
			ret = 0;
	}
	FUNC5(txmsg);
fail_put:
	FUNC2(mstb);
	return ret;
}