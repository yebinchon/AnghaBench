
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_iw_ep {int qp; struct qedr_dev* dev; } ;
struct qedr_dev {int dummy; } ;
struct qed_iwarp_cm_event_params {int status; } ;


 int DP_DEBUG (struct qedr_dev*,int ,char*) ;
 int ECONNREFUSED ;
 int IW_CM_EVENT_ESTABLISHED ;
 int QEDR_MSG_IWARP ;
 int kfree (struct qedr_iw_ep*) ;
 int qedr_iw_close_event (void*,struct qed_iwarp_cm_event_params*) ;
 int qedr_iw_issue_event (void*,struct qed_iwarp_cm_event_params*,int ) ;

__attribute__((used)) static void
qedr_iw_passive_complete(void *context,
    struct qed_iwarp_cm_event_params *params)
{
 struct qedr_iw_ep *ep = (struct qedr_iw_ep *)context;
 struct qedr_dev *dev = ep->dev;




 if ((params->status == -ECONNREFUSED) && (!ep->qp)) {
  DP_DEBUG(dev, QEDR_MSG_IWARP,
    "PASSIVE connection refused releasing ep...\n");
  kfree(ep);
  return;
 }

 qedr_iw_issue_event(context, params, IW_CM_EVENT_ESTABLISHED);

 if (params->status < 0)
  qedr_iw_close_event(context, params);
}
