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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int /*<<< orphan*/  nlh; } ;

/* Variables and functions */
 int EINVAL ; 
 int RDMA_NLDEV_ATTR_MAX ; 
#define  RDMA_NLDEV_ATTR_RES_QP 128 
 size_t RDMA_NLDEV_ATTR_STAT_RES ; 
 int FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  nldev_policy ; 
 int FUNC1 (struct sk_buff*,struct netlink_callback*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlattr**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb,
				 struct netlink_callback *cb)
{
	struct nlattr *tb[RDMA_NLDEV_ATTR_MAX];
	int ret;

	ret = FUNC2(cb->nlh, 0, tb, RDMA_NLDEV_ATTR_MAX - 1,
			  nldev_policy, NULL);
	if (ret || !tb[RDMA_NLDEV_ATTR_STAT_RES])
		return -EINVAL;

	switch (FUNC0(tb[RDMA_NLDEV_ATTR_STAT_RES])) {
	case RDMA_NLDEV_ATTR_RES_QP:
		ret = FUNC1(skb, cb);
		break;

	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}