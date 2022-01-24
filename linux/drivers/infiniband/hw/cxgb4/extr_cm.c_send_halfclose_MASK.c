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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct cpl_close_con_req {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; int /*<<< orphan*/  ep_skb_list; } ;
struct c4iw_ep {int /*<<< orphan*/  l2t; TYPE_2__ com; int /*<<< orphan*/  txq_idx; int /*<<< orphan*/  hwtid; } ;
struct TYPE_3__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  arp_failure_discard ; 
 int FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct c4iw_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct c4iw_ep *ep)
{
	struct sk_buff *skb = FUNC5(&ep->com.ep_skb_list);
	u32 wrlen = FUNC4(sizeof(struct cpl_close_con_req), 16);

	FUNC3("ep %p tid %u\n", ep, ep->hwtid);
	if (FUNC0(!skb))
		return -ENOMEM;

	FUNC2(skb, wrlen, ep->hwtid, ep->txq_idx,
			      NULL, arp_failure_discard);

	return FUNC1(&ep->com.dev->rdev, skb, ep->l2t);
}