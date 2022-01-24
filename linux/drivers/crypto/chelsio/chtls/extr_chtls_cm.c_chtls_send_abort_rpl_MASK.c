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
 unsigned int FUNC0 (struct cpl_abort_req_rss*) ; 
 int RSS_HDR ; 
 scalar_t__ TCP_SYN_RECV ; 
 struct cpl_abort_req_rss* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct chtls_sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,struct l2t_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct chtls_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  send_defer_abort_rpl ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct chtls_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct sock *sk, struct sk_buff *skb,
				 struct chtls_dev *cdev,
				 int status, int queue)
{
	struct cpl_abort_req_rss *req = FUNC1(skb) + RSS_HDR;
	struct sk_buff *reply_skb;
	struct chtls_sock *csk;
	unsigned int tid;

	csk = FUNC8(sk);
	tid = FUNC0(req);

	reply_skb = FUNC5(skb, sizeof(struct cpl_abort_rpl), FUNC6());
	if (!reply_skb) {
		req->status = (queue << 1) | status;
		FUNC11(skb, cdev, send_defer_abort_rpl);
		return;
	}

	FUNC9(reply_skb, tid, status);
	FUNC10(reply_skb, CPL_PRIORITY_DATA, queue);
	if (FUNC2(csk)) {
		struct l2t_entry *e = csk->l2t_entry;

		if (e && sk->sk_state != TCP_SYN_RECV) {
			FUNC3(csk->egress_dev, reply_skb, e);
			return;
		}
	}
	FUNC4(cdev->lldi->ports[0], reply_skb);
	FUNC7(skb);
}