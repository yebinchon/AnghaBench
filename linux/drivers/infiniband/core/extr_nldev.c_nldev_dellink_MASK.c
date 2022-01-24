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
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int device_cap_flags; } ;
struct ib_device {TYPE_1__ attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int IB_DEVICE_ALLOW_USER_UNREG ; 
 size_t RDMA_NLDEV_ATTR_DEV_INDEX ; 
 int RDMA_NLDEV_ATTR_MAX ; 
 struct ib_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  nldev_policy ; 
 int FUNC4 (struct nlmsghdr*,int /*<<< orphan*/ ,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct nlmsghdr *nlh,
			  struct netlink_ext_ack *extack)
{
	struct nlattr *tb[RDMA_NLDEV_ATTR_MAX];
	struct ib_device *device;
	u32 index;
	int err;

	err = FUNC4(nlh, 0, tb, RDMA_NLDEV_ATTR_MAX - 1,
				     nldev_policy, extack);
	if (err || !tb[RDMA_NLDEV_ATTR_DEV_INDEX])
		return -EINVAL;

	index = FUNC3(tb[RDMA_NLDEV_ATTR_DEV_INDEX]);
	device = FUNC0(FUNC5(skb->sk), index);
	if (!device)
		return -EINVAL;

	if (!(device->attrs.device_cap_flags & IB_DEVICE_ALLOW_USER_UNREG)) {
		FUNC1(device);
		return -EINVAL;
	}

	FUNC2(device);
	return 0;
}