
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_protocol {int netdev; int lock; int tx_usecnt; int txqueue; } ;
struct hsi_msg {struct hsi_client* cl; } ;
struct hsi_client {int dummy; } ;


 int SEND_IDLE ;
 int SEND_READY ;
 scalar_t__ atomic_read (int *) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 int hsi_stop_tx (struct hsi_client*) ;
 scalar_t__ list_empty (int *) ;
 int netif_wake_queue (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ssip_release_cmd (struct hsi_msg*) ;
 int ssip_set_txstate (struct ssi_protocol*,int ) ;
 int ssip_xmit (struct hsi_client*) ;

__attribute__((used)) static void ssip_swbreak_complete(struct hsi_msg *msg)
{
 struct hsi_client *cl = msg->cl;
 struct ssi_protocol *ssi = hsi_client_drvdata(cl);

 ssip_release_cmd(msg);
 spin_lock_bh(&ssi->lock);
 if (list_empty(&ssi->txqueue)) {
  if (atomic_read(&ssi->tx_usecnt)) {
   ssip_set_txstate(ssi, SEND_READY);
  } else {
   ssip_set_txstate(ssi, SEND_IDLE);
   hsi_stop_tx(cl);
  }
  spin_unlock_bh(&ssi->lock);
 } else {
  spin_unlock_bh(&ssi->lock);
  ssip_xmit(cl);
 }
 netif_wake_queue(ssi->netdev);
}
