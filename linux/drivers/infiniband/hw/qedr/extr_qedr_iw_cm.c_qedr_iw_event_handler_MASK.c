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
struct qedr_iw_ep {int /*<<< orphan*/  during_connect; TYPE_1__* cm_id; struct qedr_dev* dev; } ;
struct qedr_dev {int dummy; } ;
struct qed_iwarp_cm_event_params {int event; int /*<<< orphan*/  status; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* rem_ref ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,char*,...) ; 
 int /*<<< orphan*/  IB_EVENT_QP_ACCESS_ERR ; 
 int /*<<< orphan*/  IB_EVENT_QP_FATAL ; 
 int /*<<< orphan*/  IW_CM_EVENT_CONNECT_REPLY ; 
#define  QED_IWARP_EVENT_ACTIVE_COMPLETE 142 
#define  QED_IWARP_EVENT_ACTIVE_MPA_REPLY 141 
#define  QED_IWARP_EVENT_CLOSE 140 
#define  QED_IWARP_EVENT_CQ_OVERFLOW 139 
#define  QED_IWARP_EVENT_DISCONNECT 138 
#define  QED_IWARP_EVENT_IRQ_FULL 137 
#define  QED_IWARP_EVENT_LLP_TIMEOUT 136 
#define  QED_IWARP_EVENT_LOCAL_ACCESS_ERROR 135 
#define  QED_IWARP_EVENT_MPA_REQUEST 134 
#define  QED_IWARP_EVENT_PASSIVE_COMPLETE 133 
#define  QED_IWARP_EVENT_QP_CATASTROPHIC 132 
#define  QED_IWARP_EVENT_REMOTE_OPERATION_ERROR 131 
#define  QED_IWARP_EVENT_REMOTE_PROTECTION_ERROR 130 
#define  QED_IWARP_EVENT_RQ_EMPTY 129 
#define  QED_IWARP_EVENT_TERMINATE_RECEIVED 128 
 int /*<<< orphan*/  FUNC1 (void*,struct qed_iwarp_cm_event_params*) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct qed_iwarp_cm_event_params*) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct qed_iwarp_cm_event_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct qed_iwarp_cm_event_params*) ; 
 int /*<<< orphan*/  FUNC5 (void*,struct qed_iwarp_cm_event_params*) ; 
 int /*<<< orphan*/  FUNC6 (void*,struct qed_iwarp_cm_event_params*) ; 
 int /*<<< orphan*/  FUNC7 (void*,struct qed_iwarp_cm_event_params*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC9(void *context, struct qed_iwarp_cm_event_params *params)
{
	struct qedr_iw_ep *ep = (struct qedr_iw_ep *)context;
	struct qedr_dev *dev = ep->dev;

	switch (params->event) {
	case QED_IWARP_EVENT_MPA_REQUEST:
		FUNC5(context, params);
		break;
	case QED_IWARP_EVENT_ACTIVE_MPA_REPLY:
		FUNC4(context, params);
		break;
	case QED_IWARP_EVENT_PASSIVE_COMPLETE:
		ep->during_connect = 0;
		FUNC6(context, params);
		break;

	case QED_IWARP_EVENT_ACTIVE_COMPLETE:
		ep->during_connect = 0;
		FUNC3(context,
				    params,
				    IW_CM_EVENT_CONNECT_REPLY);
		if (params->status < 0) {
			struct qedr_iw_ep *ep = (struct qedr_iw_ep *)context;

			ep->cm_id->rem_ref(ep->cm_id);
			ep->cm_id = NULL;
		}
		break;
	case QED_IWARP_EVENT_DISCONNECT:
		FUNC2(context, params);
		break;
	case QED_IWARP_EVENT_CLOSE:
		ep->during_connect = 0;
		FUNC1(context, params);
		break;
	case QED_IWARP_EVENT_RQ_EMPTY:
		FUNC7(context, params, IB_EVENT_QP_FATAL,
				 "QED_IWARP_EVENT_RQ_EMPTY");
		break;
	case QED_IWARP_EVENT_IRQ_FULL:
		FUNC7(context, params, IB_EVENT_QP_FATAL,
				 "QED_IWARP_EVENT_IRQ_FULL");
		break;
	case QED_IWARP_EVENT_LLP_TIMEOUT:
		FUNC7(context, params, IB_EVENT_QP_FATAL,
				 "QED_IWARP_EVENT_LLP_TIMEOUT");
		break;
	case QED_IWARP_EVENT_REMOTE_PROTECTION_ERROR:
		FUNC7(context, params, IB_EVENT_QP_ACCESS_ERR,
				 "QED_IWARP_EVENT_REMOTE_PROTECTION_ERROR");
		break;
	case QED_IWARP_EVENT_CQ_OVERFLOW:
		FUNC7(context, params, IB_EVENT_QP_FATAL,
				 "QED_IWARP_EVENT_CQ_OVERFLOW");
		break;
	case QED_IWARP_EVENT_QP_CATASTROPHIC:
		FUNC7(context, params, IB_EVENT_QP_FATAL,
				 "QED_IWARP_EVENT_QP_CATASTROPHIC");
		break;
	case QED_IWARP_EVENT_LOCAL_ACCESS_ERROR:
		FUNC7(context, params, IB_EVENT_QP_ACCESS_ERR,
				 "QED_IWARP_EVENT_LOCAL_ACCESS_ERROR");
		break;
	case QED_IWARP_EVENT_REMOTE_OPERATION_ERROR:
		FUNC7(context, params, IB_EVENT_QP_FATAL,
				 "QED_IWARP_EVENT_REMOTE_OPERATION_ERROR");
		break;
	case QED_IWARP_EVENT_TERMINATE_RECEIVED:
		FUNC0(dev, "Got terminate message\n");
		break;
	default:
		FUNC0(dev, "Unknown event received %d\n", params->event);
		break;
	}
	return 0;
}