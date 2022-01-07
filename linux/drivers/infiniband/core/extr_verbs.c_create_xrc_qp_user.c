
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct ib_qp_init_attr {TYPE_1__* xrcd; int qp_context; int event_handler; } ;
struct ib_qp {int open_list; TYPE_1__* xrcd; int * srq; int * recv_cq; int send_cq; int * pd; struct ib_qp* qp_context; int event_handler; } ;
struct TYPE_2__ {int usecnt; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct ib_qp*) ;
 int __ib_insert_xrcd_qp (TYPE_1__*,struct ib_qp*) ;
 struct ib_qp* __ib_open_qp (struct ib_qp*,int ,int ) ;
 int __ib_shared_qp_event_handler ;
 int atomic_inc (int *) ;

__attribute__((used)) static struct ib_qp *create_xrc_qp_user(struct ib_qp *qp,
     struct ib_qp_init_attr *qp_init_attr,
     struct ib_udata *udata)
{
 struct ib_qp *real_qp = qp;

 qp->event_handler = __ib_shared_qp_event_handler;
 qp->qp_context = qp;
 qp->pd = ((void*)0);
 qp->send_cq = qp->recv_cq = ((void*)0);
 qp->srq = ((void*)0);
 qp->xrcd = qp_init_attr->xrcd;
 atomic_inc(&qp_init_attr->xrcd->usecnt);
 INIT_LIST_HEAD(&qp->open_list);

 qp = __ib_open_qp(real_qp, qp_init_attr->event_handler,
     qp_init_attr->qp_context);
 if (IS_ERR(qp))
  return qp;

 __ib_insert_xrcd_qp(qp_init_attr->xrcd, real_qp);
 return qp;
}
