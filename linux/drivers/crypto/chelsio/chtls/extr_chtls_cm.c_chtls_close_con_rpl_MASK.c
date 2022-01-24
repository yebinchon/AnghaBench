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
struct tcp_sock {int /*<<< orphan*/  linger2; scalar_t__ snd_una; } ;
struct sock {int sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; } ;
struct sk_buff {int dummy; } ;
struct cpl_close_con_rpl {int /*<<< orphan*/  snd_nxt; } ;
struct chtls_sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSK_ABORT_RPL_PENDING ; 
 int /*<<< orphan*/  CSK_ABORT_SHUTDOWN ; 
 int RSS_HDR ; 
 int /*<<< orphan*/  SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
#define  TCP_CLOSING 130 
#define  TCP_FIN_WAIT1 129 
 int /*<<< orphan*/  TCP_FIN_WAIT2 ; 
#define  TCP_LAST_ACK 128 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct cpl_close_con_rpl* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct chtls_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 struct chtls_sock* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC13 (struct sock*) ; 

__attribute__((used)) static void FUNC14(struct sock *sk, struct sk_buff *skb)
{
	struct cpl_close_con_rpl *rpl = FUNC4(skb) + RSS_HDR;
	struct chtls_sock *csk;
	struct tcp_sock *tp;

	csk = FUNC9(sk);
	tp = FUNC13(sk);

	tp->snd_una = FUNC7(rpl->snd_nxt) - 1;  /* exclude FIN */

	switch (sk->sk_state) {
	case TCP_CLOSING:
		FUNC2(sk);
		if (FUNC5(csk, CSK_ABORT_RPL_PENDING))
			FUNC1(sk);
		else
			FUNC3(sk);
		break;
	case TCP_LAST_ACK:
		FUNC2(sk);
		FUNC1(sk);
		break;
	case TCP_FIN_WAIT1:
		FUNC12(sk, TCP_FIN_WAIT2);
		sk->sk_shutdown |= SEND_SHUTDOWN;

		if (!FUNC10(sk, SOCK_DEAD))
			sk->sk_state_change(sk);
		else if (FUNC13(sk)->linger2 < 0 &&
			 !FUNC5(csk, CSK_ABORT_SHUTDOWN))
			FUNC0(sk, skb);
		break;
	default:
		FUNC8("close_con_rpl in bad state %d\n", sk->sk_state);
	}
	FUNC6(skb);
}