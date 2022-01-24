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
struct sk_buff {int dummy; } ;
struct cpl_abort_rpl {int dummy; } ;
struct cpl_abort_req_rss {int status; } ;
struct chtls_dev {TYPE_1__* lldi; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ports; } ;

/* Variables and functions */
 int CPL_ABORT_NO_RST ; 
 int /*<<< orphan*/  CPL_PRIORITY_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct cpl_abort_req_rss*) ; 
 int GFP_KERNEL ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC2 (int,int) ; 
 struct cpl_abort_req_rss* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct chtls_dev *cdev, struct sk_buff *skb)
{
	struct cpl_abort_req_rss *req = FUNC3(skb);
	struct sk_buff *reply_skb;

	reply_skb = FUNC2(sizeof(struct cpl_abort_rpl),
			      GFP_KERNEL | __GFP_NOFAIL);
	FUNC1(reply_skb, sizeof(struct cpl_abort_rpl));
	FUNC6(reply_skb, FUNC0(req),
			 (req->status & CPL_ABORT_NO_RST));
	FUNC7(reply_skb, CPL_PRIORITY_DATA, req->status >> 1);
	FUNC4(cdev->lldi->ports[0], reply_skb);
	FUNC5(skb);
}