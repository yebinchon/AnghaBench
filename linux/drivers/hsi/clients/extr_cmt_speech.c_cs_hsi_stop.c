
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs_hsi_iface {int lock; int pm_qos_req; int data_state; int control_state; TYPE_1__* cl; int iface_state; int master; } ;
struct TYPE_2__ {int device; } ;


 int CS_STATE_CLOSED ;
 int WARN_ON (int) ;
 int cs_free_cmds (struct cs_hsi_iface*) ;
 int cs_hsi_free_data (struct cs_hsi_iface*) ;
 int cs_hsi_set_wakeline (struct cs_hsi_iface*,int ) ;
 int cs_state_idle (int ) ;
 int dev_dbg (int *,char*) ;
 int hsi_release_port (TYPE_1__*) ;
 int kfree (struct cs_hsi_iface*) ;
 int pm_qos_remove_request (int *) ;
 scalar_t__ pm_qos_request_active (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ssip_slave_put_master (int ) ;

__attribute__((used)) static void cs_hsi_stop(struct cs_hsi_iface *hi)
{
 dev_dbg(&hi->cl->device, "cs_hsi_stop\n");
 cs_hsi_set_wakeline(hi, 0);
 ssip_slave_put_master(hi->master);


 hi->iface_state = CS_STATE_CLOSED;
 hsi_release_port(hi->cl);






 WARN_ON(!cs_state_idle(hi->control_state));
 WARN_ON(!cs_state_idle(hi->data_state));

 if (pm_qos_request_active(&hi->pm_qos_req))
  pm_qos_remove_request(&hi->pm_qos_req);

 spin_lock_bh(&hi->lock);
 cs_hsi_free_data(hi);
 cs_free_cmds(hi);
 spin_unlock_bh(&hi->lock);
 kfree(hi);
}
