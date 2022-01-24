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
struct tcp_sock {int /*<<< orphan*/  snd_nxt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cpl_abort_req {int rsvd1; int cmd; int /*<<< orphan*/  rsvd0; } ;
struct chtls_sock {int txq_idx; int /*<<< orphan*/  cdev; int /*<<< orphan*/  tid; int /*<<< orphan*/  txdata_skb_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_ABORT_REQ ; 
 int CPL_ABORT_SEND_RST ; 
 int CPL_PRIORITY_DATA ; 
 int /*<<< orphan*/  CSK_TX_DATA_SENT ; 
 int /*<<< orphan*/  FUNC0 (struct cpl_abort_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  abort_arp_failure ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct chtls_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct chtls_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct tcp_sock*,struct sk_buff*,int) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC9 (struct sock*) ; 

__attribute__((used)) static void FUNC10(struct sock *sk, int mode, struct sk_buff *skb)
{
	struct cpl_abort_req *req;
	struct chtls_sock *csk;
	struct tcp_sock *tp;

	csk = FUNC4(sk);
	tp = FUNC9(sk);

	if (!skb)
		skb = FUNC1(csk->txdata_skb_cache, sizeof(*req));

	req = (struct cpl_abort_req *)FUNC6(skb, sizeof(*req));
	FUNC0(req, CPL_ABORT_REQ, csk->tid);
	FUNC7(skb, (csk->txq_idx << 1) | CPL_PRIORITY_DATA);
	req->rsvd0 = FUNC3(tp->snd_nxt);
	req->rsvd1 = !FUNC2(csk, CSK_TX_DATA_SENT);
	req->cmd = mode;
	FUNC8(skb, csk->cdev, abort_arp_failure);
	FUNC5(sk, tp, skb, mode == CPL_ABORT_SEND_RST);
}