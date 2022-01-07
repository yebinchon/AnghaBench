
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedr_iw_ep {int during_connect; TYPE_1__* cm_id; struct qedr_dev* dev; } ;
struct qedr_dev {int dummy; } ;
struct qed_iwarp_cm_event_params {int event; int status; } ;
struct TYPE_2__ {int (* rem_ref ) (TYPE_1__*) ;} ;


 int DP_NOTICE (struct qedr_dev*,char*,...) ;
 int IB_EVENT_QP_ACCESS_ERR ;
 int IB_EVENT_QP_FATAL ;
 int IW_CM_EVENT_CONNECT_REPLY ;
 int qedr_iw_close_event (void*,struct qed_iwarp_cm_event_params*) ;
 int qedr_iw_disconnect_event (void*,struct qed_iwarp_cm_event_params*) ;
 int qedr_iw_issue_event (void*,struct qed_iwarp_cm_event_params*,int ) ;
 int qedr_iw_mpa_reply (void*,struct qed_iwarp_cm_event_params*) ;
 int qedr_iw_mpa_request (void*,struct qed_iwarp_cm_event_params*) ;
 int qedr_iw_passive_complete (void*,struct qed_iwarp_cm_event_params*) ;
 int qedr_iw_qp_event (void*,struct qed_iwarp_cm_event_params*,int ,char*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int
qedr_iw_event_handler(void *context, struct qed_iwarp_cm_event_params *params)
{
 struct qedr_iw_ep *ep = (struct qedr_iw_ep *)context;
 struct qedr_dev *dev = ep->dev;

 switch (params->event) {
 case 134:
  qedr_iw_mpa_request(context, params);
  break;
 case 141:
  qedr_iw_mpa_reply(context, params);
  break;
 case 133:
  ep->during_connect = 0;
  qedr_iw_passive_complete(context, params);
  break;

 case 142:
  ep->during_connect = 0;
  qedr_iw_issue_event(context,
        params,
        IW_CM_EVENT_CONNECT_REPLY);
  if (params->status < 0) {
   struct qedr_iw_ep *ep = (struct qedr_iw_ep *)context;

   ep->cm_id->rem_ref(ep->cm_id);
   ep->cm_id = ((void*)0);
  }
  break;
 case 138:
  qedr_iw_disconnect_event(context, params);
  break;
 case 140:
  ep->during_connect = 0;
  qedr_iw_close_event(context, params);
  break;
 case 129:
  qedr_iw_qp_event(context, params, IB_EVENT_QP_FATAL,
     "QED_IWARP_EVENT_RQ_EMPTY");
  break;
 case 137:
  qedr_iw_qp_event(context, params, IB_EVENT_QP_FATAL,
     "QED_IWARP_EVENT_IRQ_FULL");
  break;
 case 136:
  qedr_iw_qp_event(context, params, IB_EVENT_QP_FATAL,
     "QED_IWARP_EVENT_LLP_TIMEOUT");
  break;
 case 130:
  qedr_iw_qp_event(context, params, IB_EVENT_QP_ACCESS_ERR,
     "QED_IWARP_EVENT_REMOTE_PROTECTION_ERROR");
  break;
 case 139:
  qedr_iw_qp_event(context, params, IB_EVENT_QP_FATAL,
     "QED_IWARP_EVENT_CQ_OVERFLOW");
  break;
 case 132:
  qedr_iw_qp_event(context, params, IB_EVENT_QP_FATAL,
     "QED_IWARP_EVENT_QP_CATASTROPHIC");
  break;
 case 135:
  qedr_iw_qp_event(context, params, IB_EVENT_QP_ACCESS_ERR,
     "QED_IWARP_EVENT_LOCAL_ACCESS_ERROR");
  break;
 case 131:
  qedr_iw_qp_event(context, params, IB_EVENT_QP_FATAL,
     "QED_IWARP_EVENT_REMOTE_OPERATION_ERROR");
  break;
 case 128:
  DP_NOTICE(dev, "Got terminate message\n");
  break;
 default:
  DP_NOTICE(dev, "Unknown event received %d\n", params->event);
  break;
 }
 return 0;
}
