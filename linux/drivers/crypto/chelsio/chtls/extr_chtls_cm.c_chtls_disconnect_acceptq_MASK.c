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
struct sock {int dummy; } ;
struct request_sock {struct request_sock* dl_next; struct sock* sk; int /*<<< orphan*/ * rsk_ops; } ;

/* Variables and functions */
 struct request_sock** FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  chtls_rsk_ops ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

__attribute__((used)) static void FUNC11(struct sock *listen_sk)
{
	struct request_sock **pprev;

	pprev = FUNC0(listen_sk);
	while (*pprev) {
		struct request_sock *req = *pprev;

		if (req->rsk_ops == &chtls_rsk_ops) {
			struct sock *child = req->sk;

			*pprev = req->dl_next;
			FUNC8(listen_sk);
			FUNC6(req);
			FUNC9(child);
			FUNC3();
			FUNC1(child);
			FUNC5(child);
			FUNC7(child);
			FUNC2(child);
			FUNC4();
			FUNC10(child);
		} else {
			pprev = &req->dl_next;
		}
	}
}