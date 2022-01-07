
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srpt_rdma_ch {TYPE_1__* qp; int sess_name; int release_work; } ;
struct ib_wc {int status; } ;
struct ib_cq {struct srpt_rdma_ch* cq_context; } ;
struct TYPE_2__ {int qp_num; } ;


 int CH_DISCONNECTED ;
 int IB_WC_SUCCESS ;
 int pr_debug (char*,int ,int ,...) ;
 int schedule_work (int *) ;
 int srpt_process_wait_list (struct srpt_rdma_ch*) ;
 scalar_t__ srpt_set_ch_state (struct srpt_rdma_ch*,int ) ;

__attribute__((used)) static void srpt_zerolength_write_done(struct ib_cq *cq, struct ib_wc *wc)
{
 struct srpt_rdma_ch *ch = cq->cq_context;

 pr_debug("%s-%d wc->status %d\n", ch->sess_name, ch->qp->qp_num,
   wc->status);

 if (wc->status == IB_WC_SUCCESS) {
  srpt_process_wait_list(ch);
 } else {
  if (srpt_set_ch_state(ch, CH_DISCONNECTED))
   schedule_work(&ch->release_work);
  else
   pr_debug("%s-%d: already disconnected.\n",
     ch->sess_name, ch->qp->qp_num);
 }
}
