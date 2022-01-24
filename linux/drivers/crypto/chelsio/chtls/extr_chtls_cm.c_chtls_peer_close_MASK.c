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
struct sock {int sk_shutdown; int sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff {int dummy; } ;
struct chtls_sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSK_ABORT_RPL_PENDING ; 
 int /*<<< orphan*/  POLL_HUP ; 
 int /*<<< orphan*/  POLL_IN ; 
 int RCV_SHUTDOWN ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int /*<<< orphan*/  SOCK_WAKE_WAITD ; 
 int TCP_CLOSE ; 
 int /*<<< orphan*/  TCP_CLOSE_WAIT ; 
 int /*<<< orphan*/  TCP_CLOSING ; 
#define  TCP_ESTABLISHED 131 
#define  TCP_FIN_WAIT1 130 
#define  TCP_FIN_WAIT2 129 
#define  TCP_SYN_RECV 128 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct chtls_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 struct chtls_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct sock *sk, struct sk_buff *skb)
{
	struct chtls_sock *csk = FUNC5(sk);

	sk->sk_shutdown |= RCV_SHUTDOWN;
	FUNC8(sk, SOCK_DONE);

	switch (sk->sk_state) {
	case TCP_SYN_RECV:
	case TCP_ESTABLISHED:
		FUNC10(sk, TCP_CLOSE_WAIT);
		break;
	case TCP_FIN_WAIT1:
		FUNC10(sk, TCP_CLOSING);
		break;
	case TCP_FIN_WAIT2:
		FUNC1(sk);
		if (FUNC3(csk, CSK_ABORT_RPL_PENDING))
			FUNC0(sk);
		else
			FUNC2(sk);
		break;
	default:
		FUNC4("cpl_peer_close in bad state %d\n", sk->sk_state);
	}

	if (!FUNC7(sk, SOCK_DEAD)) {
		sk->sk_state_change(sk);
		/* Do not send POLL_HUP for half duplex close. */

		if ((sk->sk_shutdown & SEND_SHUTDOWN) ||
		    sk->sk_state == TCP_CLOSE)
			FUNC6(sk, SOCK_WAKE_WAITD, POLL_HUP);
		else
			FUNC6(sk, SOCK_WAKE_WAITD, POLL_IN);
	}
}