
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cm_id; } ;
struct TYPE_4__ {int cm_id; } ;
struct srpt_rdma_ch {int state; TYPE_3__* qp; int sess_name; TYPE_2__ ib_cm; TYPE_1__ rdma_cm; int using_rdma_cm; } ;
struct ib_event {int event; } ;
struct TYPE_6__ {int qp_num; } ;




 int get_ch_state_name (int ) ;
 int ib_cm_notify (int ,int) ;
 int pr_debug (char*,int,struct srpt_rdma_ch*,int ,...) ;
 int pr_err (char*,int) ;
 int rdma_notify (int ,int) ;

__attribute__((used)) static void srpt_qp_event(struct ib_event *event, struct srpt_rdma_ch *ch)
{
 pr_debug("QP event %d on ch=%p sess_name=%s state=%d\n",
   event->event, ch, ch->sess_name, ch->state);

 switch (event->event) {
 case 129:
  if (ch->using_rdma_cm)
   rdma_notify(ch->rdma_cm.cm_id, event->event);
  else
   ib_cm_notify(ch->ib_cm.cm_id, event->event);
  break;
 case 128:
  pr_debug("%s-%d, state %s: received Last WQE event.\n",
    ch->sess_name, ch->qp->qp_num,
    get_ch_state_name(ch->state));
  break;
 default:
  pr_err("received unrecognized IB QP event %d\n", event->event);
  break;
 }
}
