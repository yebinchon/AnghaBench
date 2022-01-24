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
struct tcp_sock {int /*<<< orphan*/  rcv_nxt; int /*<<< orphan*/  snd_nxt; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_err; struct chtls_sock* sk_user_data; } ;
struct sk_buff {int dummy; } ;
struct cpl_abort_req_rss {int /*<<< orphan*/  status; } ;
struct chtls_sock {int txq_idx; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int CPL_ABORT_NO_RST ; 
 int /*<<< orphan*/  CSK_ABORT_REQ_RCVD ; 
 int /*<<< orphan*/  CSK_ABORT_RPL_PENDING ; 
 int /*<<< orphan*/  CSK_ABORT_SHUTDOWN ; 
 int /*<<< orphan*/  CSK_TX_DATA_SENT ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int RSS_HDR ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 scalar_t__ TCP_SYN_RECV ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpl_abort_req_rss* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct chtls_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct chtls_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct chtls_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 struct tcp_sock* FUNC15 (struct sock*) ; 

__attribute__((used)) static void FUNC16(struct sock *sk, struct sk_buff *skb)
{
	const struct cpl_abort_req_rss *req = FUNC6(skb) + RSS_HDR;
	struct chtls_sock *csk = sk->sk_user_data;
	int rst_status = CPL_ABORT_NO_RST;
	int queue = csk->txq_idx;

	if (FUNC10(req->status)) {
		if (sk->sk_state == TCP_SYN_RECV)
			FUNC5(sk, 0, 0);

		FUNC11(skb);
		return;
	}

	FUNC8(csk, CSK_ABORT_REQ_RCVD);

	if (!FUNC7(csk, CSK_ABORT_SHUTDOWN) &&
	    !FUNC7(csk, CSK_TX_DATA_SENT)) {
		struct tcp_sock *tp = FUNC15(sk);

		if (FUNC12(sk, 0, tp->snd_nxt, tp->rcv_nxt) < 0)
			FUNC0(1, "send_tx_flowc error");
		FUNC9(csk, CSK_TX_DATA_SENT);
	}

	FUNC9(csk, CSK_ABORT_SHUTDOWN);

	if (!FUNC7(csk, CSK_ABORT_RPL_PENDING)) {
		sk->sk_err = ETIMEDOUT;

		if (!FUNC13(sk, SOCK_DEAD))
			sk->sk_error_report(sk);

		if (sk->sk_state == TCP_SYN_RECV && !FUNC1(sk, skb))
			return;

		FUNC3(sk);
		FUNC2(sk);
	}

	FUNC4(sk, skb, csk->cdev, rst_status, queue);
}