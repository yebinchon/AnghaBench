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
typedef  void* u32 ;
struct tcp_sock {int rcv_wnd; int /*<<< orphan*/  rcv_wup; void* snd_una; void* snd_nxt; void* write_seq; void* pushed_seq; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  inet_id; } ;

/* Variables and functions */
 int RCV_BUFSIZ_M ; 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,unsigned int) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, u32 snd_isn, unsigned int opt)
{
	struct tcp_sock *tp = FUNC5(sk);

	tp->pushed_seq = snd_isn;
	tp->write_seq = snd_isn;
	tp->snd_nxt = snd_isn;
	tp->snd_una = snd_isn;
	FUNC1(sk)->inet_id = FUNC2();
	FUNC0(sk, opt);

	if (tp->rcv_wnd > (RCV_BUFSIZ_M << 10))
		tp->rcv_wup -= tp->rcv_wnd - (RCV_BUFSIZ_M << 10);

	FUNC3();
	FUNC4(sk, TCP_ESTABLISHED);
}