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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 size_t RDMA_NLDEV_ATTR_DEV_INDEX ; 
 int RDMA_NLDEV_ATTR_MAX ; 
 int /*<<< orphan*/  RDMA_NLDEV_CMD_RES_GET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_NL_NLDEV ; 
 int FUNC2 (struct sk_buff*,struct ib_device*) ; 
 struct ib_device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  nldev_policy ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nlmsghdr*,int /*<<< orphan*/ ,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct nlmsghdr* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct nlmsghdr *nlh,
			      struct netlink_ext_ack *extack)
{
	struct nlattr *tb[RDMA_NLDEV_ATTR_MAX];
	struct ib_device *device;
	struct sk_buff *msg;
	u32 index;
	int ret;

	ret = FUNC9(nlh, 0, tb, RDMA_NLDEV_ATTR_MAX - 1,
				     nldev_policy, extack);
	if (ret || !tb[RDMA_NLDEV_ATTR_DEV_INDEX])
		return -EINVAL;

	index = FUNC5(tb[RDMA_NLDEV_ATTR_DEV_INDEX]);
	device = FUNC3(FUNC12(skb->sk), index);
	if (!device)
		return -EINVAL;

	msg = FUNC8(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg) {
		ret = -ENOMEM;
		goto err;
	}

	nlh = FUNC10(msg, FUNC0(skb).portid, nlh->nlmsg_seq,
			FUNC1(RDMA_NL_NLDEV, RDMA_NLDEV_CMD_RES_GET),
			0, 0);

	ret = FUNC2(msg, device);
	if (ret)
		goto err_free;

	FUNC6(msg, nlh);
	FUNC4(device);
	return FUNC11(FUNC12(skb->sk), msg, FUNC0(skb).portid);

err_free:
	FUNC7(msg);
err:
	FUNC4(device);
	return ret;
}