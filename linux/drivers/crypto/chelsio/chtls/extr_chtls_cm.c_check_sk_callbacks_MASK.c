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
struct sock {scalar_t__ sk_user_data; } ;
struct chtls_sock {struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSK_CALLBACKS_CHKD ; 
 int /*<<< orphan*/  FUNC0 (struct chtls_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct chtls_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct chtls_sock *csk)
{
	struct sock *sk = csk->sk;

	if (FUNC2(sk->sk_user_data &&
		     !FUNC0(csk, CSK_CALLBACKS_CHKD)))
		FUNC1(csk, CSK_CALLBACKS_CHKD);
}