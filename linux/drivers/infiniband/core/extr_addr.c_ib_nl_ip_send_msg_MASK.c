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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct rdma_ls_ip_resolve_header {int /*<<< orphan*/  ifindex; } ;
struct rdma_dev_addr {int /*<<< orphan*/  bound_dev_if; } ;
struct nlmsghdr {int dummy; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  size ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LS_NLA_TYPE_IPV4 ; 
 int LS_NLA_TYPE_IPV6 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  NLM_F_REQUEST ; 
 int RDMA_NLA_F_MANDATORY ; 
 int /*<<< orphan*/  RDMA_NL_GROUP_LS ; 
 int /*<<< orphan*/  RDMA_NL_LS ; 
 int /*<<< orphan*/  RDMA_NL_LS_OP_IP_RESOLVE ; 
 void* FUNC1 (struct sk_buff*,struct nlmsghdr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int,size_t,void const*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rdma_ls_ip_resolve_header* FUNC8 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct rdma_dev_addr *dev_addr,
			     const void *daddr,
			     u32 seq, u16 family)
{
	struct sk_buff *skb = NULL;
	struct nlmsghdr *nlh;
	struct rdma_ls_ip_resolve_header *header;
	void *data;
	size_t size;
	int attrtype;
	int len;

	if (family == AF_INET) {
		size = sizeof(struct in_addr);
		attrtype = RDMA_NLA_F_MANDATORY | LS_NLA_TYPE_IPV4;
	} else {
		size = sizeof(struct in6_addr);
		attrtype = RDMA_NLA_F_MANDATORY | LS_NLA_TYPE_IPV6;
	}

	len = FUNC3(sizeof(size));
	len += FUNC0(sizeof(*header));

	skb = FUNC6(len, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	data = FUNC1(skb, &nlh, seq, 0, RDMA_NL_LS,
			    RDMA_NL_LS_OP_IP_RESOLVE, NLM_F_REQUEST);
	if (!data) {
		FUNC5(skb);
		return -ENODATA;
	}

	/* Construct the family header first */
	header = FUNC8(skb, FUNC0(sizeof(*header)));
	header->ifindex = dev_addr->bound_dev_if;
	FUNC2(skb, attrtype, size, daddr);

	/* Repair the nlmsg header length */
	FUNC4(skb, nlh);
	FUNC7(&init_net, skb, RDMA_NL_GROUP_LS, GFP_KERNEL);

	/* Make the request retry, so when we get the response from userspace
	 * we will have something.
	 */
	return -ENODATA;
}