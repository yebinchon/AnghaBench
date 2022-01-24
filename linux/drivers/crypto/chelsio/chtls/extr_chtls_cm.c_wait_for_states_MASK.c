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
struct socket_wq {int /*<<< orphan*/  rcu; int /*<<< orphan*/ * fasync_list; int /*<<< orphan*/  wait; } ;
struct sock {int /*<<< orphan*/ * sk_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct socket_wq*) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct socket_wq* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC10 (long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int FUNC15 (long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC16(struct sock *sk, unsigned int states)
{
	FUNC0(wait, current);
	struct socket_wq _sk_wq;
	long current_timeo;
	int err = 0;

	current_timeo = 200;

	/*
	 * We want this to work even when there's no associated struct socket.
	 * In that case we provide a temporary wait_queue_head_t.
	 */
	if (!sk->sk_wq) {
		FUNC5(&_sk_wq.wait);
		_sk_wq.fasync_list = NULL;
		FUNC4(&_sk_wq.rcu);
		FUNC1(sk->sk_wq, &_sk_wq);
	}

	FUNC3(FUNC14(sk), &wait);
	while (!FUNC13(sk, states)) {
		if (!current_timeo) {
			err = -EBUSY;
			break;
		}
		if (FUNC12(current)) {
			err = FUNC15(current_timeo);
			break;
		}
		FUNC11(TASK_UNINTERRUPTIBLE);
		FUNC8(sk);
		if (!FUNC13(sk, states))
			current_timeo = FUNC10(current_timeo);
		FUNC2(TASK_RUNNING);
		FUNC6(sk);
	}
	FUNC9(FUNC14(sk), &wait);

	if (FUNC7(sk->sk_wq) == &_sk_wq)
		sk->sk_wq = NULL;
	return err;
}