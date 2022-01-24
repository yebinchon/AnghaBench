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
struct sock {int /*<<< orphan*/  sk_callback_lock; } ;
struct siw_cep {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIW_CM_WORK_READ_MPAHDR ; 
#define  SIW_EPSTATE_AWAIT_MPAREP 131 
#define  SIW_EPSTATE_AWAIT_MPAREQ 130 
#define  SIW_EPSTATE_LISTENING 129 
#define  SIW_EPSTATE_RDMA_MODE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct siw_cep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct siw_cep*,char*,int) ; 
 struct siw_cep* FUNC5 (struct sock*) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	struct siw_cep *cep;

	FUNC1(&sk->sk_callback_lock);

	cep = FUNC5(sk);
	if (!cep) {
		FUNC0(1);
		goto out;
	}
	FUNC4(cep, "state: %d\n", cep->state);

	switch (cep->state) {
	case SIW_EPSTATE_RDMA_MODE:
		/* fall through */
	case SIW_EPSTATE_LISTENING:
		break;

	case SIW_EPSTATE_AWAIT_MPAREQ:
		/* fall through */
	case SIW_EPSTATE_AWAIT_MPAREP:
		FUNC3(cep, SIW_CM_WORK_READ_MPAHDR);
		break;

	default:
		FUNC4(cep, "unexpected data, state %d\n", cep->state);
		break;
	}
out:
	FUNC2(&sk->sk_callback_lock);
}