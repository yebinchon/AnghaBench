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
struct socket {struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_callback_lock; } ;
struct siw_cep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct siw_cep*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct siw_cep*) ; 
 struct siw_cep* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct socket *s)
{
	struct sock *sk = s->sk;
	struct siw_cep *cep;

	if (sk) {
		FUNC4(&sk->sk_callback_lock);
		cep = FUNC3(sk);
		if (cep) {
			FUNC2(sk, cep);
			FUNC1(cep);
		} else {
			FUNC0("siw: cannot restore sk callbacks: no ep\n");
		}
		FUNC5(&sk->sk_callback_lock);
	} else {
		FUNC0("siw: cannot restore sk callbacks: no sk\n");
	}
}