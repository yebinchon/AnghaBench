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
struct isert_np {int /*<<< orphan*/ * cm_id; } ;
typedef  enum rdma_cm_event_type { ____Placeholder_rdma_cm_event_type } rdma_cm_event_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
#define  RDMA_CM_EVENT_ADDR_CHANGE 129 
#define  RDMA_CM_EVENT_DEVICE_REMOVAL 128 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,struct isert_np*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct isert_np*,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct isert_np*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct isert_np *isert_np,
		     enum rdma_cm_event_type event)
{
	FUNC2("%s (%d): isert np %p\n",
		  FUNC5(event), event, isert_np);

	switch (event) {
	case RDMA_CM_EVENT_DEVICE_REMOVAL:
		isert_np->cm_id = NULL;
		break;
	case RDMA_CM_EVENT_ADDR_CHANGE:
		isert_np->cm_id = FUNC4(isert_np);
		if (FUNC0(isert_np->cm_id)) {
			FUNC3("isert np %p setup id failed: %ld\n",
				  isert_np, FUNC1(isert_np->cm_id));
			isert_np->cm_id = NULL;
		}
		break;
	default:
		FUNC3("isert np %p Unexpected event %d\n",
			  isert_np, event);
	}

	return -1;
}