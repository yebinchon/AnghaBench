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
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct l2t_entry {int dummy; } ;
struct cpl_abort_rpl {int dummy; } ;
struct cpl_abort_req_rss {int status; } ;
struct chtls_sock {int /*<<< orphan*/  egress_dev; struct l2t_entry* l2t_entry; } ;
struct chtls_dev {TYPE_1__* lldi; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_PRIORITY_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct cpl_abort_req_rss*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ TCP_SYN_RECV ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct cpl_abort_req_rss* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct chtls_sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,struct l2t_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct chtls_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct chtls_dev*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct sock *sk, struct sk_buff *skb,
			   struct chtls_dev *cdev, int status, int queue)
{
	struct cpl_abort_req_rss *req = FUNC2(skb);
	struct sk_buff *reply_skb;
	struct chtls_sock *csk;

	csk = FUNC7(sk);

	reply_skb = FUNC1(sizeof(struct cpl_abort_rpl),
			      GFP_KERNEL);

	if (!reply_skb) {
		req->status = (queue << 1);
		FUNC8(cdev, skb);
		return;
	}

	FUNC9(reply_skb, FUNC0(req), status);
	FUNC6(skb);

	FUNC10(reply_skb, CPL_PRIORITY_DATA, queue);
	if (FUNC3(csk)) {
		struct l2t_entry *e = csk->l2t_entry;

		if (e && sk->sk_state != TCP_SYN_RECV) {
			FUNC4(csk->egress_dev, reply_skb, e);
			return;
		}
	}
	FUNC5(cdev->lldi->ports[0], reply_skb);
}