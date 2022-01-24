#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rdma_cm_id {scalar_t__ context; } ;
struct TYPE_4__ {int /*<<< orphan*/  private_data; } ;
struct TYPE_5__ {TYPE_1__ conn; } ;
struct rdma_cm_event {int event; int /*<<< orphan*/  status; TYPE_2__ param; } ;
struct TYPE_6__ {int /*<<< orphan*/ * cma_id; } ;
struct iser_conn {int /*<<< orphan*/  state_mutex; TYPE_3__ ib_conn; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISER_CONN_DOWN ; 
#define  RDMA_CM_EVENT_ADDR_CHANGE 139 
#define  RDMA_CM_EVENT_ADDR_ERROR 138 
#define  RDMA_CM_EVENT_ADDR_RESOLVED 137 
#define  RDMA_CM_EVENT_CONNECT_ERROR 136 
#define  RDMA_CM_EVENT_DEVICE_REMOVAL 135 
#define  RDMA_CM_EVENT_DISCONNECTED 134 
#define  RDMA_CM_EVENT_ESTABLISHED 133 
#define  RDMA_CM_EVENT_REJECTED 132 
#define  RDMA_CM_EVENT_ROUTE_ERROR 131 
#define  RDMA_CM_EVENT_ROUTE_RESOLVED 130 
#define  RDMA_CM_EVENT_TIMEWAIT_EXIT 129 
#define  RDMA_CM_EVENT_UNREACHABLE 128 
 int /*<<< orphan*/  FUNC0 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_cm_id*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_cm_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct rdma_cm_id*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
{
	struct iser_conn *iser_conn;
	int ret = 0;

	iser_conn = (struct iser_conn *)cma_id->context;
	FUNC5("%s (%d): status %d conn %p id %p\n",
		  FUNC9(event->event), event->event,
		  event->status, cma_id->context, cma_id);

	FUNC7(&iser_conn->state_mutex);
	switch (event->event) {
	case RDMA_CM_EVENT_ADDR_RESOLVED:
		FUNC0(cma_id);
		break;
	case RDMA_CM_EVENT_ROUTE_RESOLVED:
		FUNC6(cma_id);
		break;
	case RDMA_CM_EVENT_ESTABLISHED:
		FUNC3(cma_id, event->param.conn.private_data);
		break;
	case RDMA_CM_EVENT_REJECTED:
		FUNC5("Connection rejected: %s\n",
			 FUNC10(cma_id, event->status));
		/* FALLTHROUGH */
	case RDMA_CM_EVENT_ADDR_ERROR:
	case RDMA_CM_EVENT_ROUTE_ERROR:
	case RDMA_CM_EVENT_CONNECT_ERROR:
	case RDMA_CM_EVENT_UNREACHABLE:
		FUNC2(cma_id);
		break;
	case RDMA_CM_EVENT_DISCONNECTED:
	case RDMA_CM_EVENT_ADDR_CHANGE:
	case RDMA_CM_EVENT_TIMEWAIT_EXIT:
		FUNC1(cma_id, false);
		break;
	case RDMA_CM_EVENT_DEVICE_REMOVAL:
		/*
		 * we *must* destroy the device as we cannot rely
		 * on iscsid to be around to initiate error handling.
		 * also if we are not in state DOWN implicitly destroy
		 * the cma_id.
		 */
		FUNC1(cma_id, true);
		if (iser_conn->state != ISER_CONN_DOWN) {
			iser_conn->ib_conn.cma_id = NULL;
			ret = 1;
		}
		break;
	default:
		FUNC4("Unexpected RDMA CM event: %s (%d)\n",
			 FUNC9(event->event), event->event);
		break;
	}
	FUNC8(&iser_conn->state_mutex);

	return ret;
}