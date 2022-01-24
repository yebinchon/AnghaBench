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
struct ib_conn {int /*<<< orphan*/ * cma_id; } ;
struct iser_conn {scalar_t__ state; int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  ep; int /*<<< orphan*/  conn_list; struct ib_conn ib_conn; } ;
struct TYPE_2__ {int /*<<< orphan*/  connlist_mutex; } ;

/* Variables and functions */
 scalar_t__ ISER_CONN_DOWN ; 
 TYPE_1__ ig ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iser_conn*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct iser_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct iser_conn *iser_conn)
{
	struct ib_conn *ib_conn = &iser_conn->ib_conn;

	FUNC5(&ig.connlist_mutex);
	FUNC4(&iser_conn->conn_list);
	FUNC6(&ig.connlist_mutex);

	FUNC5(&iser_conn->state_mutex);
	/* In case we endup here without ep_disconnect being invoked. */
	if (iser_conn->state != ISER_CONN_DOWN) {
		FUNC2("iser conn %p state %d, expected state down.\n",
			  iser_conn, iser_conn->state);
		FUNC0(iser_conn->ep);
		iser_conn->state = ISER_CONN_DOWN;
	}
	/*
	 * In case we never got to bind stage, we still need to
	 * release IB resources (which is safe to call more than once).
	 */
	FUNC1(iser_conn, true);
	FUNC6(&iser_conn->state_mutex);

	if (ib_conn->cma_id != NULL) {
		FUNC7(ib_conn->cma_id);
		ib_conn->cma_id = NULL;
	}

	FUNC3(iser_conn);
}