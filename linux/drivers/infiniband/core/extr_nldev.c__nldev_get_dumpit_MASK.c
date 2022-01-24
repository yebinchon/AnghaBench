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
struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  RDMA_NLDEV_CMD_GET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_NL_NLDEV ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ib_device *device,
			     struct sk_buff *skb,
			     struct netlink_callback *cb,
			     unsigned int idx)
{
	int start = cb->args[0];
	struct nlmsghdr *nlh;

	if (idx < start)
		return 0;

	nlh = FUNC5(skb, FUNC0(cb->skb).portid, cb->nlh->nlmsg_seq,
			FUNC1(RDMA_NL_NLDEV, RDMA_NLDEV_CMD_GET),
			0, NLM_F_MULTI);

	if (FUNC2(skb, device)) {
		FUNC3(skb, nlh);
		goto out;
	}

	FUNC4(skb, nlh);

	idx++;

out:	cb->args[0] = idx;
	return skb->len;
}