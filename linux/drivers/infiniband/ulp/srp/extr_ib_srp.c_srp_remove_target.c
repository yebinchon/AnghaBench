
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srp_target_port {scalar_t__ state; int ch_count; int scsi_host; TYPE_1__* srp_host; int list; struct srp_rdma_ch* ch; int rport; int tl_err_work; int net; } ;
struct srp_rdma_ch {int dummy; } ;
struct TYPE_2__ {int target_lock; } ;


 int KOBJ_NS_TYPE_NET ;
 scalar_t__ SRP_TARGET_REMOVED ;
 int WARN_ON_ONCE (int) ;
 int cancel_work_sync (int *) ;
 int kfree (struct srp_rdma_ch*) ;
 int kobj_ns_drop (int ,int ) ;
 int list_del (int *) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int srp_del_scsi_host_attr (int ) ;
 int srp_disconnect_target (struct srp_target_port*) ;
 int srp_free_ch_ib (struct srp_target_port*,struct srp_rdma_ch*) ;
 int srp_free_req_data (struct srp_target_port*,struct srp_rdma_ch*) ;
 int srp_remove_host (int ) ;
 int srp_rport_get (int ) ;
 int srp_rport_put (int ) ;
 int srp_stop_rport_timers (int ) ;

__attribute__((used)) static void srp_remove_target(struct srp_target_port *target)
{
 struct srp_rdma_ch *ch;
 int i;

 WARN_ON_ONCE(target->state != SRP_TARGET_REMOVED);

 srp_del_scsi_host_attr(target->scsi_host);
 srp_rport_get(target->rport);
 srp_remove_host(target->scsi_host);
 scsi_remove_host(target->scsi_host);
 srp_stop_rport_timers(target->rport);
 srp_disconnect_target(target);
 kobj_ns_drop(KOBJ_NS_TYPE_NET, target->net);
 for (i = 0; i < target->ch_count; i++) {
  ch = &target->ch[i];
  srp_free_ch_ib(target, ch);
 }
 cancel_work_sync(&target->tl_err_work);
 srp_rport_put(target->rport);
 for (i = 0; i < target->ch_count; i++) {
  ch = &target->ch[i];
  srp_free_req_data(target, ch);
 }
 kfree(target->ch);
 target->ch = ((void*)0);

 spin_lock(&target->srp_host->target_lock);
 list_del(&target->list);
 spin_unlock(&target->srp_host->target_lock);

 scsi_host_put(target->scsi_host);
}
