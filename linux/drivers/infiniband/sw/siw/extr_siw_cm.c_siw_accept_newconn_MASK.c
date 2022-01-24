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
typedef  int /*<<< orphan*/  val ;
struct socket {TYPE_1__* sk; } ;
struct siw_cep {scalar_t__ state; struct socket* sock; struct siw_cep* listen_cep; int /*<<< orphan*/  sk_error_report; int /*<<< orphan*/  sk_write_space; int /*<<< orphan*/  sk_data_ready; int /*<<< orphan*/  sk_state_change; int /*<<< orphan*/  sdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk_rmem_alloc; struct siw_cep* sk_user_data; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  SIW_CM_WORK_MPATIMEOUT ; 
 scalar_t__ SIW_EPSTATE_AWAIT_MPAREQ ; 
 scalar_t__ SIW_EPSTATE_LISTENING ; 
 int /*<<< orphan*/  SOL_TCP ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct socket*,struct socket**,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 struct siw_cep* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct siw_cep*) ; 
 int /*<<< orphan*/  FUNC5 (struct siw_cep*) ; 
 int /*<<< orphan*/  FUNC6 (struct siw_cep*) ; 
 int /*<<< orphan*/  FUNC7 (struct siw_cep*) ; 
 scalar_t__ FUNC8 (struct siw_cep*,int) ; 
 int FUNC9 (struct siw_cep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct siw_cep*,char*,...) ; 
 int FUNC11 (struct siw_cep*) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*) ; 
 int siw_tcp_nagle ; 
 int /*<<< orphan*/  FUNC13 (struct socket*) ; 

__attribute__((used)) static void FUNC14(struct siw_cep *cep)
{
	struct socket *s = cep->sock;
	struct socket *new_s = NULL;
	struct siw_cep *new_cep = NULL;
	int rv = 0; /* debug only. should disappear */

	if (cep->state != SIW_EPSTATE_LISTENING)
		goto error;

	new_cep = FUNC3(cep->sdev);
	if (!new_cep)
		goto error;

	/*
	 * 4: Allocate a sufficient number of work elements
	 * to allow concurrent handling of local + peer close
	 * events, MPA header processing + MPA timeout.
	 */
	if (FUNC8(new_cep, 4) != 0)
		goto error;

	/*
	 * Copy saved socket callbacks from listening CEP
	 * and assign new socket with new CEP
	 */
	new_cep->sk_state_change = cep->sk_state_change;
	new_cep->sk_data_ready = cep->sk_data_ready;
	new_cep->sk_write_space = cep->sk_write_space;
	new_cep->sk_error_report = cep->sk_error_report;

	rv = FUNC1(s, &new_s, O_NONBLOCK);
	if (rv != 0) {
		/*
		 * Connection already aborted by peer..?
		 */
		FUNC10(cep, "kernel_accept() error: %d\n", rv);
		goto error;
	}
	new_cep->sock = new_s;
	FUNC4(new_cep);
	new_s->sk->sk_user_data = new_cep;

	if (siw_tcp_nagle == false) {
		int val = 1;

		rv = FUNC2(new_s, SOL_TCP, TCP_NODELAY,
				       (char *)&val, sizeof(val));
		if (rv) {
			FUNC10(cep, "setsockopt NODELAY error: %d\n", rv);
			goto error;
		}
	}
	new_cep->state = SIW_EPSTATE_AWAIT_MPAREQ;

	rv = FUNC9(new_cep, SIW_CM_WORK_MPATIMEOUT);
	if (rv)
		goto error;
	/*
	 * See siw_proc_mpareq() etc. for the use of new_cep->listen_cep.
	 */
	new_cep->listen_cep = cep;
	FUNC4(cep);

	if (FUNC0(&new_s->sk->sk_rmem_alloc)) {
		/*
		 * MPA REQ already queued
		 */
		FUNC10(cep, "immediate mpa request\n");

		FUNC7(new_cep);
		rv = FUNC11(new_cep);
		FUNC6(new_cep);

		if (rv != -EAGAIN) {
			FUNC5(cep);
			new_cep->listen_cep = NULL;
			if (rv)
				goto error;
		}
	}
	return;

error:
	if (new_cep)
		FUNC5(new_cep);

	if (new_s) {
		FUNC12(new_s);
		FUNC13(new_s);
		new_cep->sock = NULL;
	}
	FUNC10(cep, "error %d\n", rv);
}