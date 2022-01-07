
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct rvt_qp {TYPE_2__ ibqp; int s_alt_pkey_index; int s_pkey_index; int alt_ah_attr; int port_num; int remote_ah_attr; int s_mig_state; } ;
struct TYPE_3__ {TYPE_2__* qp; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;


 int IB_EVENT_PATH_MIG ;
 int IB_MIG_MIGRATED ;
 int rdma_ah_get_port_num (int *) ;
 int stub1 (struct ib_event*,int ) ;

void qib_migrate_qp(struct rvt_qp *qp)
{
 struct ib_event ev;

 qp->s_mig_state = IB_MIG_MIGRATED;
 qp->remote_ah_attr = qp->alt_ah_attr;
 qp->port_num = rdma_ah_get_port_num(&qp->alt_ah_attr);
 qp->s_pkey_index = qp->s_alt_pkey_index;

 ev.device = qp->ibqp.device;
 ev.element.qp = &qp->ibqp;
 ev.event = IB_EVENT_PATH_MIG;
 qp->ibqp.event_handler(&ev, qp->ibqp.qp_context);
}
