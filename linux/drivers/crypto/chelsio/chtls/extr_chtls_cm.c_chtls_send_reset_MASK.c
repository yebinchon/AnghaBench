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
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct chtls_sock {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSK_ABORT_RPL_PENDING ; 
 int /*<<< orphan*/  CSK_ABORT_SHUTDOWN ; 
 int /*<<< orphan*/  CSK_RST_ABORTED ; 
 int /*<<< orphan*/  CSK_TX_DATA_SENT ; 
 scalar_t__ TCP_SYN_RECV ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int,struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct chtls_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct chtls_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct chtls_sock* FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC8 (struct sock*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct sock *sk, int mode, struct sk_buff *skb)
{
	struct chtls_sock *csk = FUNC6(sk);

	if (FUNC9(FUNC3(csk, CSK_ABORT_SHUTDOWN) ||
		     !csk->cdev)) {
		if (sk->sk_state == TCP_SYN_RECV)
			FUNC4(csk, CSK_RST_ABORTED);
		goto out;
	}

	if (!FUNC3(csk, CSK_TX_DATA_SENT)) {
		struct tcp_sock *tp = FUNC8(sk);

		if (FUNC7(sk, 0, tp->snd_nxt, tp->rcv_nxt) < 0)
			FUNC0(1, "send tx flowc error");
		FUNC4(csk, CSK_TX_DATA_SENT);
	}

	FUNC4(csk, CSK_ABORT_RPL_PENDING);
	FUNC1(sk);

	FUNC4(csk, CSK_ABORT_SHUTDOWN);
	if (sk->sk_state != TCP_SYN_RECV)
		FUNC2(sk, mode, skb);
	else
		goto out;

	return;
out:
	FUNC5(skb);
}