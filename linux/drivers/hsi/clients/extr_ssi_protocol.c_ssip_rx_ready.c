
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_protocol {scalar_t__ main_state; scalar_t__ send_state; int lock; } ;
struct hsi_client {int device; } ;


 scalar_t__ ACTIVE ;
 int SEND_READY ;
 scalar_t__ WAIT4READY ;
 int dev_dbg (int *,char*,...) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ssip_set_txstate (struct ssi_protocol*,int ) ;
 int ssip_xmit (struct hsi_client*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ssip_rx_ready(struct hsi_client *cl)
{
 struct ssi_protocol *ssi = hsi_client_drvdata(cl);

 spin_lock_bh(&ssi->lock);
 if (unlikely(ssi->main_state != ACTIVE)) {
  dev_dbg(&cl->device, "READY on wrong state: S(%d) M(%d)\n",
     ssi->send_state, ssi->main_state);
  spin_unlock_bh(&ssi->lock);
  return;
 }
 if (ssi->send_state != WAIT4READY) {
  dev_dbg(&cl->device, "Ignore spurious READY command\n");
  spin_unlock_bh(&ssi->lock);
  return;
 }
 ssip_set_txstate(ssi, SEND_READY);
 spin_unlock_bh(&ssi->lock);
 ssip_xmit(cl);
}
