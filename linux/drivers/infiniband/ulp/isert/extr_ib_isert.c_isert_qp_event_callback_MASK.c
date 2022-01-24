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
struct isert_conn {int /*<<< orphan*/  cm_id; } ;
struct ib_event {int event; } ;

/* Variables and functions */
#define  IB_EVENT_COMM_EST 129 
#define  IB_EVENT_QP_LAST_WQE_REACHED 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static void
FUNC4(struct ib_event *e, void *context)
{
	struct isert_conn *isert_conn = context;

	FUNC1("%s (%d): conn %p\n",
		  FUNC0(e->event), e->event, isert_conn);

	switch (e->event) {
	case IB_EVENT_COMM_EST:
		FUNC3(isert_conn->cm_id, IB_EVENT_COMM_EST);
		break;
	case IB_EVENT_QP_LAST_WQE_REACHED:
		FUNC2("Reached TX IB_EVENT_QP_LAST_WQE_REACHED\n");
		break;
	default:
		break;
	}
}