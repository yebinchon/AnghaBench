
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_qp {int ibqp; } ;
struct qedr_iw_ep {struct qedr_qp* qp; struct qedr_dev* dev; } ;
struct qedr_discon_work {int work; int status; int event; struct qedr_iw_ep* ep; } ;
struct qedr_dev {int iwarp_wq; } ;
struct qed_iwarp_cm_event_params {int status; int event; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct qedr_discon_work* kzalloc (int,int ) ;
 int qedr_iw_disconnect_worker ;
 int qedr_iw_qp_add_ref (int *) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void
qedr_iw_disconnect_event(void *context,
    struct qed_iwarp_cm_event_params *params)
{
 struct qedr_discon_work *work;
 struct qedr_iw_ep *ep = (struct qedr_iw_ep *)context;
 struct qedr_dev *dev = ep->dev;
 struct qedr_qp *qp = ep->qp;

 work = kzalloc(sizeof(*work), GFP_ATOMIC);
 if (!work)
  return;

 qedr_iw_qp_add_ref(&qp->ibqp);
 work->ep = ep;
 work->event = params->event;
 work->status = params->status;

 INIT_WORK(&work->work, qedr_iw_disconnect_worker);
 queue_work(dev->iwarp_wq, &work->work);
}
