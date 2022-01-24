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
struct sock {int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_err; } ;
struct siw_cep {int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct siw_cep*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct siw_cep* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct siw_cep *cep = FUNC1(sk);

	if (cep) {
		FUNC0(cep, "error %d, socket state: %d, cep state: %d\n",
			    sk->sk_err, sk->sk_state, cep->state);
		cep->sk_error_report(sk);
	}
}