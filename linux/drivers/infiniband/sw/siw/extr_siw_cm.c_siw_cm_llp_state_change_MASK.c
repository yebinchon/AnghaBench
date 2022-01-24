#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_state; int /*<<< orphan*/  sk_callback_lock; } ;
struct siw_cep {void (* sk_state_change ) (struct sock*) ;int state; TYPE_2__* qp; } ;
struct TYPE_3__ {int tx_suspend; } ;
struct TYPE_4__ {TYPE_1__ tx_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIW_CM_WORK_ACCEPT ; 
 int /*<<< orphan*/  SIW_CM_WORK_PEER_CLOSE ; 
#define  TCP_CLOSE 130 
#define  TCP_CLOSE_WAIT 129 
#define  TCP_ESTABLISHED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct siw_cep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct siw_cep*,char*,int) ; 
 struct siw_cep* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct siw_cep *cep;
	void (*orig_state_change)(struct sock *s);

	FUNC0(&sk->sk_callback_lock);

	cep = FUNC4(sk);
	if (!cep) {
		/* endpoint already disassociated */
		FUNC1(&sk->sk_callback_lock);
		return;
	}
	orig_state_change = cep->sk_state_change;

	FUNC3(cep, "state: %d\n", cep->state);

	switch (sk->sk_state) {
	case TCP_ESTABLISHED:
		/*
		 * handle accepting socket as special case where only
		 * new connection is possible
		 */
		FUNC2(cep, SIW_CM_WORK_ACCEPT);
		break;

	case TCP_CLOSE:
	case TCP_CLOSE_WAIT:
		if (cep->qp)
			cep->qp->tx_ctx.tx_suspend = 1;
		FUNC2(cep, SIW_CM_WORK_PEER_CLOSE);
		break;

	default:
		FUNC3(cep, "unexpected socket state %d\n", sk->sk_state);
	}
	FUNC1(&sk->sk_callback_lock);
	orig_state_change(sk);
}