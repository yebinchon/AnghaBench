#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_state; TYPE_2__* sk_prot; int /*<<< orphan*/  sk_lingertime; int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_shutdown; } ;
struct sk_buff {int dummy; } ;
struct cpl_abort_req {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk_recv_queue; } ;
struct chtls_sock {TYPE_1__ tlshws; } ;
struct TYPE_6__ {scalar_t__ linger2; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* disconnect ) (struct sock*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_ABORT_SEND_RST ; 
 int /*<<< orphan*/  CSK_ABORT_SHUTDOWN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCK_LINGER ; 
 int TCP_CLOSE ; 
 int TCP_FIN_WAIT2 ; 
 int TCP_SYN_SENT ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 scalar_t__ FUNC12 (struct sock*) ; 
 struct chtls_sock* FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,long) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC23 (struct sock*) ; 

void FUNC24(struct sock *sk, long timeout)
{
	int data_lost, prev_state;
	struct chtls_sock *csk;

	csk = FUNC13(sk);

	FUNC11(sk);
	sk->sk_shutdown |= SHUTDOWN_MASK;

	data_lost = FUNC17(&sk->sk_receive_queue);
	data_lost |= FUNC17(&csk->tlshws.sk_recv_queue);
	FUNC5(sk);
	FUNC4(sk);

	if (sk->sk_state == TCP_CLOSE) {
		goto wait;
	} else if (data_lost || sk->sk_state == TCP_SYN_SENT) {
		FUNC6(sk, CPL_ABORT_SEND_RST, NULL);
		FUNC15(sk);
		goto unlock;
	} else if (FUNC18(sk, SOCK_LINGER) && !sk->sk_lingertime) {
		sk->sk_prot->disconnect(sk, 0);
	} else if (FUNC12(sk)) {
		FUNC3(sk);
	}
wait:
	if (timeout)
		FUNC16(sk, timeout);

unlock:
	prev_state = sk->sk_state;
	FUNC19(sk);
	FUNC20(sk);

	FUNC14(sk);

	FUNC9();
	FUNC1(sk);

	if (prev_state != TCP_CLOSE && sk->sk_state == TCP_CLOSE)
		goto out;

	if (sk->sk_state == TCP_FIN_WAIT2 && FUNC23(sk)->linger2 < 0 &&
	    !FUNC7(sk, CSK_ABORT_SHUTDOWN)) {
		struct sk_buff *skb;

		skb = FUNC0(sizeof(struct cpl_abort_req), GFP_ATOMIC);
		if (skb)
			FUNC6(sk, CPL_ABORT_SEND_RST, skb);
	}

	if (sk->sk_state == TCP_CLOSE)
		FUNC8(sk);

out:
	FUNC2(sk);
	FUNC10();
	FUNC21(sk);
}