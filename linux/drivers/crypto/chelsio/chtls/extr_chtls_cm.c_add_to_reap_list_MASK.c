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
struct sock {struct chtls_sock* sk_user_data; } ;
struct chtls_sock {struct sock* passive_reap_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct sock* reap_list ; 
 int /*<<< orphan*/  reap_list_lock ; 
 int /*<<< orphan*/  reap_task ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct sock *sk)
{
	struct chtls_sock *csk = sk->sk_user_data;

	FUNC2();
	FUNC0(sk);
	FUNC4(sk); /* release the port immediately */

	FUNC6(&reap_list_lock);
	csk->passive_reap_next = reap_list;
	reap_list = sk;
	if (!csk->passive_reap_next)
		FUNC5(&reap_task);
	FUNC7(&reap_list_lock);
	FUNC1(sk);
	FUNC3();
}