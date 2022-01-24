#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  size_t u32 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct rdma_hw_stats {int /*<<< orphan*/  lock; int /*<<< orphan*/ * names; scalar_t__* value; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_5__ {int (* get_hw_stats ) (struct ib_device*,struct rdma_hw_stats*,size_t,int /*<<< orphan*/ ) ;int /*<<< orphan*/  alloc_hw_stats; } ;
struct ib_device {TYPE_2__ ops; TYPE_1__* port_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  portid; } ;
struct TYPE_4__ {struct rdma_hw_stats* hw_stats; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_3__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 size_t RDMA_NLDEV_ATTR_DEV_INDEX ; 
 size_t RDMA_NLDEV_ATTR_PORT_INDEX ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_STAT_HWCOUNTERS ; 
 int /*<<< orphan*/  RDMA_NLDEV_CMD_STAT_GET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_NL_NLDEV ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct ib_device*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct ib_device* FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 struct sk_buff* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct ib_device*,size_t,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ib_device*,size_t) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (struct ib_device*,struct rdma_hw_stats*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct sk_buff *skb,
					 struct nlmsghdr *nlh,
					 struct netlink_ext_ack *extack,
					 struct nlattr *tb[])
{
	struct rdma_hw_stats *stats;
	struct nlattr *table_attr;
	struct ib_device *device;
	int ret, num_cnts, i;
	struct sk_buff *msg;
	u32 index, port;
	u64 v;

	if (!tb[RDMA_NLDEV_ATTR_DEV_INDEX] || !tb[RDMA_NLDEV_ATTR_PORT_INDEX])
		return -EINVAL;

	index = FUNC8(tb[RDMA_NLDEV_ATTR_DEV_INDEX]);
	device = FUNC4(FUNC20(skb->sk), index);
	if (!device)
		return -EINVAL;

	if (!device->ops.alloc_hw_stats || !device->ops.get_hw_stats) {
		ret = -EINVAL;
		goto err;
	}

	port = FUNC8(tb[RDMA_NLDEV_ATTR_PORT_INDEX]);
	if (!FUNC18(device, port)) {
		ret = -EINVAL;
		goto err;
	}

	msg = FUNC15(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg) {
		ret = -ENOMEM;
		goto err;
	}

	nlh = FUNC16(msg, FUNC0(skb).portid, nlh->nlmsg_seq,
			FUNC1(RDMA_NL_NLDEV,
					 RDMA_NLDEV_CMD_STAT_GET),
			0, 0);

	if (FUNC2(msg, device) ||
	    FUNC12(msg, RDMA_NLDEV_ATTR_PORT_INDEX, port)) {
		ret = -EMSGSIZE;
		goto err_msg;
	}

	stats = device->port_data ? device->port_data[port].hw_stats : NULL;
	if (stats == NULL) {
		ret = -EINVAL;
		goto err_msg;
	}
	FUNC6(&stats->lock);

	num_cnts = device->ops.get_hw_stats(device, stats, port, 0);
	if (num_cnts < 0) {
		ret = -EINVAL;
		goto err_stats;
	}

	table_attr = FUNC11(msg, RDMA_NLDEV_ATTR_STAT_HWCOUNTERS);
	if (!table_attr) {
		ret = -EMSGSIZE;
		goto err_stats;
	}
	for (i = 0; i < num_cnts; i++) {
		v = stats->value[i] +
			FUNC17(device, port, i);
		if (FUNC3(msg, stats->names[i], v)) {
			ret = -EMSGSIZE;
			goto err_table;
		}
	}
	FUNC10(msg, table_attr);

	FUNC7(&stats->lock);
	FUNC13(msg, nlh);
	FUNC5(device);
	return FUNC19(FUNC20(skb->sk), msg, FUNC0(skb).portid);

err_table:
	FUNC9(msg, table_attr);
err_stats:
	FUNC7(&stats->lock);
err_msg:
	FUNC14(msg);
err:
	FUNC5(device);
	return ret;
}