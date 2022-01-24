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
typedef  scalar_t__ u8 ;
struct net_device {int /*<<< orphan*/  mtu; } ;
struct ib_port_attr {int port_cap_flags; int pkey_tbl_len; int active_speed; scalar_t__ state; int /*<<< orphan*/  phys_state; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  active_mtu; int /*<<< orphan*/  active_width; int /*<<< orphan*/  max_msg_sz; int /*<<< orphan*/  gid_tbl_len; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; struct net_device** netdevs; } ;
struct TYPE_3__ {int /*<<< orphan*/ * gid_table_len; int /*<<< orphan*/  max_mtu; } ;
struct hns_roce_dev {TYPE_2__ iboe; TYPE_1__ caps; struct device* dev; } ;
struct device {int dummy; } ;
typedef  enum ib_mtu { ____Placeholder_ib_mtu } ib_mtu ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HNS_ROCE_MAX_MSG_LEN ; 
 int /*<<< orphan*/  IB_MTU_256 ; 
 scalar_t__ IB_PORT_ACTIVE ; 
 int IB_PORT_BOOT_MGMT_SUP ; 
 int IB_PORT_CM_SUP ; 
 scalar_t__ IB_PORT_DOWN ; 
 int /*<<< orphan*/  IB_PORT_PHYS_STATE_DISABLED ; 
 int /*<<< orphan*/  IB_PORT_PHYS_STATE_LINK_UP ; 
 int IB_PORT_REINIT_SUP ; 
 int IB_PORT_VENDOR_CLASS_SUP ; 
 int /*<<< orphan*/  IB_WIDTH_4X ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct hns_roce_dev* FUNC8 (struct ib_device*) ; 

__attribute__((used)) static int FUNC9(struct ib_device *ib_dev, u8 port_num,
			       struct ib_port_attr *props)
{
	struct hns_roce_dev *hr_dev = FUNC8(ib_dev);
	struct device *dev = hr_dev->dev;
	struct net_device *net_dev;
	unsigned long flags;
	enum ib_mtu mtu;
	u8 port;

	FUNC0(port_num > 0);
	port = port_num - 1;

	/* props being zeroed by the caller, avoid zeroing it here */

	props->max_mtu = hr_dev->caps.max_mtu;
	props->gid_tbl_len = hr_dev->caps.gid_table_len[port];
	props->port_cap_flags = IB_PORT_CM_SUP | IB_PORT_REINIT_SUP |
				IB_PORT_VENDOR_CLASS_SUP |
				IB_PORT_BOOT_MGMT_SUP;
	props->max_msg_sz = HNS_ROCE_MAX_MSG_LEN;
	props->pkey_tbl_len = 1;
	props->active_width = IB_WIDTH_4X;
	props->active_speed = 1;

	FUNC6(&hr_dev->iboe.lock, flags);

	net_dev = hr_dev->iboe.netdevs[port];
	if (!net_dev) {
		FUNC7(&hr_dev->iboe.lock, flags);
		FUNC1(dev, "find netdev %d failed!\r\n", port);
		return -EINVAL;
	}

	mtu = FUNC2(net_dev->mtu);
	props->active_mtu = mtu ? FUNC3(props->max_mtu, mtu) : IB_MTU_256;
	props->state = (FUNC5(net_dev) && FUNC4(net_dev)) ?
			IB_PORT_ACTIVE : IB_PORT_DOWN;
	props->phys_state = (props->state == IB_PORT_ACTIVE) ?
			     IB_PORT_PHYS_STATE_LINK_UP :
			     IB_PORT_PHYS_STATE_DISABLED;

	FUNC7(&hr_dev->iboe.lock, flags);

	return 0;
}