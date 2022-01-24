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
struct TYPE_2__ {int snd_wscale; } ;
struct tcp_sock {int max_window; TYPE_1__ rx_opt; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_ABORT_SEND_RST ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  TCPF_CLOSE ; 
 scalar_t__ TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sock*,int) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 
 int FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 

int FUNC7(struct sock *sk, int flags)
{
	struct tcp_sock *tp;
	int err;

	tp = FUNC5(sk);
	FUNC1(sk);
	FUNC0(sk);
	FUNC2(sk);

	if (sk->sk_state != TCP_CLOSE) {
		sk->sk_err = ECONNRESET;
		FUNC3(sk, CPL_ABORT_SEND_RST, NULL);
		err = FUNC6(sk, TCPF_CLOSE);
		if (err)
			return err;
	}
	FUNC1(sk);
	FUNC0(sk);
	tp->max_window = 0xFFFF << (tp->rx_opt.snd_wscale);
	return FUNC4(sk, flags);
}