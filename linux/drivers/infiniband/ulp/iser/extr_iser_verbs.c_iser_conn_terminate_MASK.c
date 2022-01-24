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
struct ib_conn {int /*<<< orphan*/  qp; scalar_t__ cma_id; } ;
struct iser_conn {scalar_t__ iscsi_conn; int /*<<< orphan*/  state; struct ib_conn ib_conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISER_CONN_TERMINATING ; 
 int /*<<< orphan*/  ISER_CONN_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct iser_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct iser_conn*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct iser_conn*,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 

int FUNC6(struct iser_conn *iser_conn)
{
	struct ib_conn *ib_conn = &iser_conn->ib_conn;
	int err = 0;

	/* terminate the iser conn only if the conn state is UP */
	if (!FUNC2(iser_conn, ISER_CONN_UP,
				       ISER_CONN_TERMINATING))
		return 0;

	FUNC4("iser_conn %p state %d\n", iser_conn, iser_conn->state);

	/* suspend queuing of new iscsi commands */
	if (iser_conn->iscsi_conn)
		FUNC1(iser_conn->iscsi_conn);

	/*
	 * In case we didn't already clean up the cma_id (peer initiated
	 * a disconnection), we need to Cause the CMA to change the QP
	 * state to ERROR.
	 */
	if (ib_conn->cma_id) {
		err = FUNC5(ib_conn->cma_id);
		if (err)
			FUNC3("Failed to disconnect, conn: 0x%p err %d\n",
				 iser_conn, err);

		/* block until all flush errors are consumed */
		FUNC0(ib_conn->qp);
	}

	return 1;
}