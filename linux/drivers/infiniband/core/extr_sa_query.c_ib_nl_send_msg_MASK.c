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
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct ib_sa_query {int /*<<< orphan*/  seq; TYPE_1__* mad_buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  comp_mask; } ;
struct ib_sa_mad {TYPE_2__ sa_hdr; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {struct ib_sa_mad* mad; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NLM_F_REQUEST ; 
 int /*<<< orphan*/  RDMA_NL_GROUP_LS ; 
 int /*<<< orphan*/  RDMA_NL_LS ; 
 int /*<<< orphan*/  RDMA_NL_LS_OP_RESOLVE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct ib_sa_query*) ; 
 void* FUNC2 (struct sk_buff*,struct nlmsghdr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ib_sa_query *query, gfp_t gfp_mask)
{
	struct sk_buff *skb = NULL;
	struct nlmsghdr *nlh;
	void *data;
	struct ib_sa_mad *mad;
	int len;

	mad = query->mad_buf->mad;
	len = FUNC0(mad->sa_hdr.comp_mask);
	if (len <= 0)
		return -EMSGSIZE;

	skb = FUNC5(len, gfp_mask);
	if (!skb)
		return -ENOMEM;

	/* Put nlmsg header only for now */
	data = FUNC2(skb, &nlh, query->seq, 0, RDMA_NL_LS,
			    RDMA_NL_LS_OP_RESOLVE, NLM_F_REQUEST);
	if (!data) {
		FUNC4(skb);
		return -EMSGSIZE;
	}

	/* Add attributes */
	FUNC1(skb, query);

	/* Repair the nlmsg header length */
	FUNC3(skb, nlh);

	return FUNC6(&init_net, skb, RDMA_NL_GROUP_LS, gfp_mask);
}