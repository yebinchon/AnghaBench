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
typedef  scalar_t__ u32 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 size_t RDMA_NLDEV_ATTR_DEV_INDEX ; 
 int RDMA_NLDEV_ATTR_MAX ; 
 size_t RDMA_NLDEV_ATTR_PORT_INDEX ; 
 size_t RDMA_NLDEV_ATTR_RES_LQPN ; 
 scalar_t__ RDMA_NLDEV_ATTR_RES_QP ; 
 size_t RDMA_NLDEV_ATTR_STAT_COUNTER_ID ; 
 size_t RDMA_NLDEV_ATTR_STAT_RES ; 
 int /*<<< orphan*/  RDMA_NLDEV_CMD_STAT_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_NL_NLDEV ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct ib_device*) ; 
 struct ib_device* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*) ; 
 scalar_t__ FUNC5 (struct nlattr*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  nldev_policy ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct nlmsghdr*,int /*<<< orphan*/ ,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct nlmsghdr* FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ib_device*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct ib_device*,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *skb, struct nlmsghdr *nlh,
			       struct netlink_ext_ack *extack)
{
	struct nlattr *tb[RDMA_NLDEV_ATTR_MAX];
	struct ib_device *device;
	struct sk_buff *msg;
	u32 index, port, qpn, cntn;
	int ret;

	ret = FUNC10(nlh, 0, tb, RDMA_NLDEV_ATTR_MAX - 1,
			  nldev_policy, extack);
	if (ret || !tb[RDMA_NLDEV_ATTR_STAT_RES] ||
	    !tb[RDMA_NLDEV_ATTR_DEV_INDEX] || !tb[RDMA_NLDEV_ATTR_PORT_INDEX] ||
	    !tb[RDMA_NLDEV_ATTR_STAT_COUNTER_ID] ||
	    !tb[RDMA_NLDEV_ATTR_RES_LQPN])
		return -EINVAL;

	if (FUNC5(tb[RDMA_NLDEV_ATTR_STAT_RES]) != RDMA_NLDEV_ATTR_RES_QP)
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

	msg = FUNC9(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg) {
		ret = -ENOMEM;
		goto err;
	}
	nlh = FUNC11(msg, FUNC0(skb).portid, nlh->nlmsg_seq,
			FUNC1(RDMA_NL_NLDEV,
					 RDMA_NLDEV_CMD_STAT_SET),
			0, 0);

	cntn = FUNC5(tb[RDMA_NLDEV_ATTR_STAT_COUNTER_ID]);
	qpn = FUNC5(tb[RDMA_NLDEV_ATTR_RES_LQPN]);
	if (FUNC2(msg, device) ||
	    FUNC6(msg, RDMA_NLDEV_ATTR_PORT_INDEX, port) ||
	    FUNC6(msg, RDMA_NLDEV_ATTR_STAT_COUNTER_ID, cntn) ||
	    FUNC6(msg, RDMA_NLDEV_ATTR_RES_LQPN, qpn)) {
		ret = -EMSGSIZE;
		goto err_fill;
	}

	ret = FUNC12(device, port, qpn, cntn);
	if (ret)
		goto err_fill;

	FUNC7(msg, nlh);
	FUNC4(device);
	return FUNC14(FUNC15(skb->sk), msg, FUNC0(skb).portid);

err_fill:
	FUNC8(msg);
err:
	FUNC4(device);
	return ret;
}