#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ib_device {int dummy; } ;
struct ib_client_nl_info {int port; TYPE_1__* cdev; int /*<<< orphan*/  abi; struct sk_buff* nl_msg; } ;
typedef  int /*<<< orphan*/  client_name ;
struct TYPE_5__ {int /*<<< orphan*/  portid; } ;
struct TYPE_4__ {int /*<<< orphan*/  devt; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_3__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_CHARDEV ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_CHARDEV_ABI ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_CHARDEV_NAME ; 
 size_t RDMA_NLDEV_ATTR_CHARDEV_TYPE ; 
 int RDMA_NLDEV_ATTR_CHARDEV_TYPE_SIZE ; 
 size_t RDMA_NLDEV_ATTR_DEV_INDEX ; 
 int RDMA_NLDEV_ATTR_MAX ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_PAD ; 
 size_t RDMA_NLDEV_ATTR_PORT_INDEX ; 
 int /*<<< orphan*/  RDMA_NLDEV_CMD_GET_CHARDEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_NL_NLDEV ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ib_device* FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*) ; 
 int FUNC6 (struct ib_device*,char*,struct ib_client_nl_info*) ; 
 void* FUNC7 (struct nlattr*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct nlattr*,int) ; 
 int /*<<< orphan*/  nldev_policy ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 struct sk_buff* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct nlmsghdr*,int /*<<< orphan*/ ,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct nlmsghdr* FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (struct ib_device*,int) ; 
 int FUNC18 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct sk_buff *skb, struct nlmsghdr *nlh,
			     struct netlink_ext_ack *extack)
{
	struct nlattr *tb[RDMA_NLDEV_ATTR_MAX];
	char client_name[RDMA_NLDEV_ATTR_CHARDEV_TYPE_SIZE];
	struct ib_client_nl_info data = {};
	struct ib_device *ibdev = NULL;
	struct sk_buff *msg;
	u32 index;
	int err;

	err = FUNC14(nlh, 0, tb, RDMA_NLDEV_ATTR_MAX - 1, nldev_policy,
			  extack);
	if (err || !tb[RDMA_NLDEV_ATTR_CHARDEV_TYPE])
		return -EINVAL;

	FUNC10(client_name, tb[RDMA_NLDEV_ATTR_CHARDEV_TYPE],
		    sizeof(client_name));

	if (tb[RDMA_NLDEV_ATTR_DEV_INDEX]) {
		index = FUNC7(tb[RDMA_NLDEV_ATTR_DEV_INDEX]);
		ibdev = FUNC4(FUNC19(skb->sk), index);
		if (!ibdev)
			return -EINVAL;

		if (tb[RDMA_NLDEV_ATTR_PORT_INDEX]) {
			data.port = FUNC7(tb[RDMA_NLDEV_ATTR_PORT_INDEX]);
			if (!FUNC17(ibdev, data.port)) {
				err = -EINVAL;
				goto out_put;
			}
		} else {
			data.port = -1;
		}
	} else if (tb[RDMA_NLDEV_ATTR_PORT_INDEX]) {
		return -EINVAL;
	}

	msg = FUNC13(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg) {
		err = -ENOMEM;
		goto out_put;
	}
	nlh = FUNC15(msg, FUNC0(skb).portid, nlh->nlmsg_seq,
			FUNC1(RDMA_NL_NLDEV,
					 RDMA_NLDEV_CMD_GET_CHARDEV),
			0, 0);

	data.nl_msg = msg;
	err = FUNC6(ibdev, client_name, &data);
	if (err)
		goto out_nlmsg;

	err = FUNC9(msg, RDMA_NLDEV_ATTR_CHARDEV,
				FUNC3(data.cdev->devt),
				RDMA_NLDEV_ATTR_PAD);
	if (err)
		goto out_data;
	err = FUNC9(msg, RDMA_NLDEV_ATTR_CHARDEV_ABI, data.abi,
				RDMA_NLDEV_ATTR_PAD);
	if (err)
		goto out_data;
	if (FUNC8(msg, RDMA_NLDEV_ATTR_CHARDEV_NAME,
			   FUNC2(data.cdev))) {
		err = -EMSGSIZE;
		goto out_data;
	}

	FUNC11(msg, nlh);
	FUNC16(data.cdev);
	if (ibdev)
		FUNC5(ibdev);
	return FUNC18(FUNC19(skb->sk), msg, FUNC0(skb).portid);

out_data:
	FUNC16(data.cdev);
out_nlmsg:
	FUNC12(msg);
out_put:
	if (ibdev)
		FUNC5(ibdev);
	return err;
}