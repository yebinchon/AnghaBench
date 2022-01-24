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
struct rdma_restrack_entry {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nldev_fill_res_entry {size_t id; int flags; int (* fill_res_func ) (struct sk_buff*,int,struct rdma_restrack_entry*,scalar_t__) ;int /*<<< orphan*/  nldev_cmd; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  enum rdma_restrack_type { ____Placeholder_rdma_restrack_type } rdma_restrack_type ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct rdma_restrack_entry*) ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 int NLDEV_PER_DEV ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC2 (struct rdma_restrack_entry*) ; 
 size_t RDMA_NLDEV_ATTR_DEV_INDEX ; 
 int RDMA_NLDEV_ATTR_MAX ; 
 size_t RDMA_NLDEV_ATTR_PORT_INDEX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_NL_NLDEV ; 
 struct nldev_fill_res_entry* fill_entries ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct ib_device*) ; 
 struct ib_device* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct nlattr*) ; 
 int /*<<< orphan*/  nldev_policy ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct sk_buff* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct nlmsghdr*,int /*<<< orphan*/ ,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct nlmsghdr* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ib_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct rdma_restrack_entry*) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct rdma_restrack_entry* FUNC17 (struct ib_device*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct rdma_restrack_entry*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (struct sk_buff*,int,struct rdma_restrack_entry*,scalar_t__) ; 

__attribute__((used)) static int FUNC21(struct sk_buff *skb, struct nlmsghdr *nlh,
			       struct netlink_ext_ack *extack,
			       enum rdma_restrack_type res_type)
{
	const struct nldev_fill_res_entry *fe = &fill_entries[res_type];
	struct nlattr *tb[RDMA_NLDEV_ATTR_MAX];
	struct rdma_restrack_entry *res;
	struct ib_device *device;
	u32 index, id, port = 0;
	bool has_cap_net_admin;
	struct sk_buff *msg;
	int ret;

	ret = FUNC12(nlh, 0, tb, RDMA_NLDEV_ATTR_MAX - 1,
				     nldev_policy, extack);
	if (ret || !tb[RDMA_NLDEV_ATTR_DEV_INDEX] || !fe->id || !tb[fe->id])
		return -EINVAL;

	index = FUNC8(tb[RDMA_NLDEV_ATTR_DEV_INDEX]);
	device = FUNC5(FUNC19(skb->sk), index);
	if (!device)
		return -EINVAL;

	if (tb[RDMA_NLDEV_ATTR_PORT_INDEX]) {
		port = FUNC8(tb[RDMA_NLDEV_ATTR_PORT_INDEX]);
		if (!FUNC14(device, port)) {
			ret = -EINVAL;
			goto err;
		}
	}

	if ((port && fe->flags & NLDEV_PER_DEV) ||
	    (!port && ~fe->flags & NLDEV_PER_DEV)) {
		ret = -EINVAL;
		goto err;
	}

	id = FUNC8(tb[fe->id]);
	res = FUNC17(device, res_type, id);
	if (FUNC0(res)) {
		ret = FUNC2(res);
		goto err;
	}

	if (!FUNC15(res)) {
		ret = -ENOENT;
		goto err_get;
	}

	msg = FUNC11(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg) {
		ret = -ENOMEM;
		goto err_get;
	}

	nlh = FUNC13(msg, FUNC1(skb).portid, nlh->nlmsg_seq,
			FUNC3(RDMA_NL_NLDEV, fe->nldev_cmd),
			0, 0);

	if (FUNC4(msg, device)) {
		ret = -EMSGSIZE;
		goto err_free;
	}

	has_cap_net_admin = FUNC7(skb, CAP_NET_ADMIN);
	ret = fe->fill_res_func(msg, has_cap_net_admin, res, port);
	FUNC18(res);
	if (ret)
		goto err_free;

	FUNC9(msg, nlh);
	FUNC6(device);
	return FUNC16(FUNC19(skb->sk), msg, FUNC1(skb).portid);

err_free:
	FUNC10(msg);
err_get:
	FUNC18(res);
err:
	FUNC6(device);
	return ret;
}