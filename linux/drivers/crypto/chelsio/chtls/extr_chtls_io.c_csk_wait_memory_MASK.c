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
struct sock {int sk_shutdown; int /*<<< orphan*/  sk_write_pending; scalar_t__ sk_err; TYPE_1__* sk_socket; } ;
struct chtls_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EPIPE ; 
 int HZ ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct chtls_dev*,struct sock*) ; 
 int /*<<< orphan*/  current ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,long*,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (long) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static int FUNC12(struct chtls_dev *cdev,
			   struct sock *sk, long *timeo_p)
{
	FUNC0(wait, woken_wake_function);
	int err = 0;
	long current_timeo;
	long vm_wait = 0;
	bool noblock;

	current_timeo = *timeo_p;
	noblock = (*timeo_p ? false : true);
	if (FUNC2(cdev, sk)) {
		current_timeo = (FUNC3() % (HZ / 5)) + 2;
		vm_wait = (FUNC3() % (HZ / 5)) + 2;
	}

	FUNC1(FUNC9(sk), &wait);
	while (1) {
		FUNC8(SOCKWQ_ASYNC_NOSPACE, sk);

		if (sk->sk_err || (sk->sk_shutdown & SEND_SHUTDOWN))
			goto do_error;
		if (!*timeo_p) {
			if (noblock)
				FUNC5(SOCK_NOSPACE, &sk->sk_socket->flags);
			goto do_nonblock;
		}
		if (FUNC6(current))
			goto do_interrupted;
		FUNC7(SOCKWQ_ASYNC_NOSPACE, sk);
		if (FUNC2(cdev, sk) && !vm_wait)
			break;

		FUNC5(SOCK_NOSPACE, &sk->sk_socket->flags);
		sk->sk_write_pending++;
		FUNC10(sk, &current_timeo, sk->sk_err ||
			      (sk->sk_shutdown & SEND_SHUTDOWN) ||
			      (FUNC2(cdev, sk) && !vm_wait), &wait);
		sk->sk_write_pending--;

		if (vm_wait) {
			vm_wait -= current_timeo;
			current_timeo = *timeo_p;
			if (current_timeo != MAX_SCHEDULE_TIMEOUT) {
				current_timeo -= vm_wait;
				if (current_timeo < 0)
					current_timeo = 0;
			}
			vm_wait = 0;
		}
		*timeo_p = current_timeo;
	}
do_rm_wq:
	FUNC4(FUNC9(sk), &wait);
	return err;
do_error:
	err = -EPIPE;
	goto do_rm_wq;
do_nonblock:
	err = -EAGAIN;
	goto do_rm_wq;
do_interrupted:
	err = FUNC11(*timeo_p);
	goto do_rm_wq;
}