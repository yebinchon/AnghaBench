#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  ifindex; } ;
struct net {int dummy; } ;
struct ib_port_attr {int port_cap_flags; int subnet_prefix; int /*<<< orphan*/  phys_state; int /*<<< orphan*/  state; int /*<<< orphan*/  lmc; int /*<<< orphan*/  sm_lid; int /*<<< orphan*/  lid; scalar_t__ port_cap_flags2; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_CAP_FLAGS ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_LID ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_LMC ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_NDEV_INDEX ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_NDEV_NAME ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_PAD ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_PORT_INDEX ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_PORT_PHYS_STATE ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_PORT_STATE ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_SM_LID ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_SUBNET_PREFIX ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct ib_device*) ; 
 struct net_device* FUNC4 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ib_device*,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct net const*) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *msg,
			  struct ib_device *device, u32 port,
			  const struct net *net)
{
	struct net_device *netdev = NULL;
	struct ib_port_attr attr;
	int ret;
	u64 cap_flags = 0;

	if (FUNC3(msg, device))
		return -EMSGSIZE;

	if (FUNC8(msg, RDMA_NLDEV_ATTR_PORT_INDEX, port))
		return -EMSGSIZE;

	ret = FUNC5(device, port, &attr);
	if (ret)
		return ret;

	if (FUNC11(device, port)) {
		FUNC0((sizeof(attr.port_cap_flags) +
				sizeof(attr.port_cap_flags2)) > sizeof(u64));
		cap_flags = attr.port_cap_flags |
			((u64)attr.port_cap_flags2 << 32);
		if (FUNC9(msg, RDMA_NLDEV_ATTR_CAP_FLAGS,
				      cap_flags, RDMA_NLDEV_ATTR_PAD))
			return -EMSGSIZE;
		if (FUNC9(msg, RDMA_NLDEV_ATTR_SUBNET_PREFIX,
				      attr.subnet_prefix, RDMA_NLDEV_ATTR_PAD))
			return -EMSGSIZE;
		if (FUNC8(msg, RDMA_NLDEV_ATTR_LID, attr.lid))
			return -EMSGSIZE;
		if (FUNC8(msg, RDMA_NLDEV_ATTR_SM_LID, attr.sm_lid))
			return -EMSGSIZE;
		if (FUNC10(msg, RDMA_NLDEV_ATTR_LMC, attr.lmc))
			return -EMSGSIZE;
	}
	if (FUNC10(msg, RDMA_NLDEV_ATTR_PORT_STATE, attr.state))
		return -EMSGSIZE;
	if (FUNC10(msg, RDMA_NLDEV_ATTR_PORT_PHYS_STATE, attr.phys_state))
		return -EMSGSIZE;

	netdev = FUNC4(device, port);
	if (netdev && FUNC6(FUNC1(netdev), net)) {
		ret = FUNC8(msg,
				  RDMA_NLDEV_ATTR_NDEV_INDEX, netdev->ifindex);
		if (ret)
			goto out;
		ret = FUNC7(msg,
				     RDMA_NLDEV_ATTR_NDEV_NAME, netdev->name);
	}

out:
	if (netdev)
		FUNC2(netdev);
	return ret;
}