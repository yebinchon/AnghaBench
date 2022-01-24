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
struct sock {TYPE_1__* sk_prot; } ;
struct chtls_sock {int /*<<< orphan*/  kref; int /*<<< orphan*/  ulp_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ULP_MODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  chtls_sock_release ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct chtls_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 TYPE_1__ tcp_prot ; 

void FUNC6(struct sock *sk)
{
	struct chtls_sock *csk;

	csk = FUNC4(sk);
	FUNC0(sk);
	csk->ulp_mode = ULP_MODE_NONE;
	FUNC1(sk);
	FUNC2(sk);
	FUNC3(&csk->kref, chtls_sock_release);
	sk->sk_prot = &tcp_prot;
	sk->sk_prot->destroy(sk);
}