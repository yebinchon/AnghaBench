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
struct iser_conn {scalar_t__ state; int /*<<< orphan*/  state_mutex; int /*<<< orphan*/  up_completion; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;

/* Variables and functions */
 scalar_t__ ISER_CONN_DOWN ; 
 scalar_t__ ISER_CONN_TERMINATING ; 
 int /*<<< orphan*/  FUNC0 (char*,struct iser_conn*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct iscsi_endpoint *ep, int timeout_ms)
{
	struct iser_conn *iser_conn = ep->dd_data;
	int rc;

	rc = FUNC4(&iser_conn->up_completion,
						       FUNC1(timeout_ms));
	/* if conn establishment failed, return error code to iscsi */
	if (rc == 0) {
		FUNC2(&iser_conn->state_mutex);
		if (iser_conn->state == ISER_CONN_TERMINATING ||
		    iser_conn->state == ISER_CONN_DOWN)
			rc = -1;
		FUNC3(&iser_conn->state_mutex);
	}

	FUNC0("iser conn %p rc = %d\n", iser_conn, rc);

	if (rc > 0)
		return 1; /* success, this is the equivalent of EPOLLOUT */
	else if (!rc)
		return 0; /* timeout */
	else
		return rc; /* signal */
}