
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs_hsi_iface {int wakeline_state; TYPE_1__* cl; int master; int lock; } ;
struct TYPE_2__ {int device; } ;


 int dev_dbg (int *,char*,int,TYPE_1__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ssip_slave_start_tx (int ) ;
 int ssip_slave_stop_tx (int ) ;

__attribute__((used)) static void cs_hsi_set_wakeline(struct cs_hsi_iface *hi, bool new_state)
{
 int change = 0;

 spin_lock_bh(&hi->lock);
 if (hi->wakeline_state != new_state) {
  hi->wakeline_state = new_state;
  change = 1;
  dev_dbg(&hi->cl->device, "setting wake line to %d (%p)\n",
   new_state, hi->cl);
 }
 spin_unlock_bh(&hi->lock);

 if (change) {
  if (new_state)
   ssip_slave_start_tx(hi->master);
  else
   ssip_slave_stop_tx(hi->master);
 }

 dev_dbg(&hi->cl->device, "wake line set to %d (%p)\n",
  new_state, hi->cl);
}
