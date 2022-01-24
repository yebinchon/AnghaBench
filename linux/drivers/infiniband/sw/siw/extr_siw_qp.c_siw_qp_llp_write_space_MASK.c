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
struct sock {int /*<<< orphan*/  sk_callback_lock; TYPE_1__* sk_socket; } ;
struct siw_cep {int /*<<< orphan*/  qp; int /*<<< orphan*/  (* sk_write_space ) (struct sock*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct siw_cep* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct sock *sk)
{
	struct siw_cep *cep;

	FUNC0(&sk->sk_callback_lock);

	cep  = FUNC3(sk);
	if (cep) {
		cep->sk_write_space(sk);

		if (!FUNC5(SOCK_NOSPACE, &sk->sk_socket->flags))
			(void)FUNC2(cep->qp);
	}

	FUNC1(&sk->sk_callback_lock);
}