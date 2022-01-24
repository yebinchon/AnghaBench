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
struct isert_conn {scalar_t__ state; int /*<<< orphan*/  cm_id; } ;

/* Variables and functions */
 scalar_t__ ISER_CONN_TERMINATING ; 
 int /*<<< orphan*/  FUNC0 (char*,struct isert_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct isert_conn*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct isert_conn *isert_conn)
{
	int err;

	if (isert_conn->state >= ISER_CONN_TERMINATING)
		return;

	FUNC0("Terminating conn %p state %d\n",
		   isert_conn, isert_conn->state);
	isert_conn->state = ISER_CONN_TERMINATING;
	err = FUNC2(isert_conn->cm_id);
	if (err)
		FUNC1("Failed rdma_disconnect isert_conn %p\n",
			   isert_conn);
}