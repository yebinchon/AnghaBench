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
struct rdma_cm_id {TYPE_1__* qp; } ;
struct isert_conn {int state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  conn; int /*<<< orphan*/  qp; } ;
typedef  enum rdma_cm_event_type { ____Placeholder_rdma_cm_event_type } rdma_cm_event_type ;
struct TYPE_2__ {struct isert_conn* qp_context; } ;

/* Variables and functions */
#define  ISER_CONN_BOUND 131 
#define  ISER_CONN_FULL_FEATURE 130 
#define  ISER_CONN_TERMINATING 129 
#define  ISER_CONN_UP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct isert_conn*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct rdma_cm_id *cma_id,
			   enum rdma_cm_event_type event)
{
	struct isert_conn *isert_conn = cma_id->qp->qp_context;

	FUNC5(&isert_conn->mutex);
	switch (isert_conn->state) {
	case ISER_CONN_TERMINATING:
		break;
	case ISER_CONN_UP:
		FUNC2(isert_conn);
		FUNC0(isert_conn->qp);
		FUNC3(isert_conn);
		break;
	case ISER_CONN_BOUND:
	case ISER_CONN_FULL_FEATURE: /* FALLTHRU */
		FUNC1(isert_conn->conn, 0);
		break;
	default:
		FUNC4("conn %p terminating in state %d\n",
			   isert_conn, isert_conn->state);
	}
	FUNC6(&isert_conn->mutex);

	return 0;
}