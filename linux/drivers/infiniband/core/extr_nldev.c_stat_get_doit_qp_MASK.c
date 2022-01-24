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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  enum rdma_nl_counter_mode { ____Placeholder_rdma_nl_counter_mode } rdma_nl_counter_mode ;
typedef  enum rdma_nl_counter_mask { ____Placeholder_rdma_nl_counter_mask } rdma_nl_counter_mask ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int RDMA_COUNTER_MODE_AUTO ; 
 size_t RDMA_NLDEV_ATTR_DEV_INDEX ; 
 size_t RDMA_NLDEV_ATTR_PORT_INDEX ; 
 size_t RDMA_NLDEV_ATTR_STAT_AUTO_MODE_MASK ; 
 size_t RDMA_NLDEV_ATTR_STAT_COUNTER_ID ; 
 size_t RDMA_NLDEV_ATTR_STAT_MODE ; 
 int /*<<< orphan*/  RDMA_NLDEV_CMD_STAT_GET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_NL_NLDEV ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct ib_device*) ; 
 struct ib_device* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*) ; 
 int FUNC5 (struct nlattr*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,size_t,int) ; 
 int FUNC7 (struct sk_buff*,struct nlmsghdr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ib_device*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct ib_device*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *skb, struct nlmsghdr *nlh,
			    struct netlink_ext_ack *extack, struct nlattr *tb[])

{
	static enum rdma_nl_counter_mode mode;
	static enum rdma_nl_counter_mask mask;
	struct ib_device *device;
	struct sk_buff *msg;
	u32 index, port;
	int ret;

	if (tb[RDMA_NLDEV_ATTR_STAT_COUNTER_ID])
		return FUNC7(skb, nlh, extack);

	if (!tb[RDMA_NLDEV_ATTR_STAT_MODE] ||
	    !tb[RDMA_NLDEV_ATTR_DEV_INDEX] || !tb[RDMA_NLDEV_ATTR_PORT_INDEX])
		return -EINVAL;

	index = FUNC5(tb[RDMA_NLDEV_ATTR_DEV_INDEX]);
	device = FUNC3(FUNC15(skb->sk), index);
	if (!device)
		return -EINVAL;

	port = FUNC5(tb[RDMA_NLDEV_ATTR_PORT_INDEX]);
	if (!FUNC13(device, port)) {
		ret = -EINVAL;
		goto err;
	}

	msg = FUNC10(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg) {
		ret = -ENOMEM;
		goto err;
	}

	nlh = FUNC11(msg, FUNC0(skb).portid, nlh->nlmsg_seq,
			FUNC1(RDMA_NL_NLDEV,
					 RDMA_NLDEV_CMD_STAT_GET),
			0, 0);

	ret = FUNC12(device, port, &mode, &mask);
	if (ret)
		goto err_msg;

	if (FUNC2(msg, device) ||
	    FUNC6(msg, RDMA_NLDEV_ATTR_PORT_INDEX, port) ||
	    FUNC6(msg, RDMA_NLDEV_ATTR_STAT_MODE, mode)) {
		ret = -EMSGSIZE;
		goto err_msg;
	}

	if ((mode == RDMA_COUNTER_MODE_AUTO) &&
	    FUNC6(msg, RDMA_NLDEV_ATTR_STAT_AUTO_MODE_MASK, mask)) {
		ret = -EMSGSIZE;
		goto err_msg;
	}

	FUNC8(msg, nlh);
	FUNC4(device);
	return FUNC14(FUNC15(skb->sk), msg, FUNC0(skb).portid);

err_msg:
	FUNC9(msg);
err:
	FUNC4(device);
	return ret;
}