
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srpt_rdma_ch {int kref; int release_work; TYPE_1__* qp; int sess_name; } ;
struct TYPE_2__ {int qp_num; } ;


 int CH_DISCONNECTED ;
 int CH_DRAINING ;
 int WARN_ON_ONCE (int) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ,int ,int) ;
 int schedule_work (int *) ;
 int srpt_ch_qp_err (struct srpt_rdma_ch*) ;
 int srpt_free_ch ;
 scalar_t__ srpt_set_ch_state (struct srpt_rdma_ch*,int ) ;
 int srpt_zerolength_write (struct srpt_rdma_ch*) ;

__attribute__((used)) static bool srpt_close_ch(struct srpt_rdma_ch *ch)
{
 int ret;

 if (!srpt_set_ch_state(ch, CH_DRAINING)) {
  pr_debug("%s: already closed\n", ch->sess_name);
  return 0;
 }

 kref_get(&ch->kref);

 ret = srpt_ch_qp_err(ch);
 if (ret < 0)
  pr_err("%s-%d: changing queue pair into error state failed: %d\n",
         ch->sess_name, ch->qp->qp_num, ret);

 ret = srpt_zerolength_write(ch);
 if (ret < 0) {
  pr_err("%s-%d: queuing zero-length write failed: %d\n",
         ch->sess_name, ch->qp->qp_num, ret);
  if (srpt_set_ch_state(ch, CH_DISCONNECTED))
   schedule_work(&ch->release_work);
  else
   WARN_ON_ONCE(1);
 }

 kref_put(&ch->kref, srpt_free_ch);

 return 1;
}
