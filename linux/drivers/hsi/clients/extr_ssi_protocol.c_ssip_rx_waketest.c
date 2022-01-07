
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssi_protocol {scalar_t__ main_state; int netdev; int lock; int tx_wd; int flags; } ;
struct hsi_client {int device; } ;


 scalar_t__ ACTIVE ;
 scalar_t__ HANDSHAKE ;
 unsigned int SSIP_PAYLOAD (int ) ;
 unsigned int SSIP_WAKETEST_FAILED ;
 int SSIP_WAKETEST_FLAG ;
 int del_timer (int *) ;
 int dev_dbg (int *,char*,...) ;
 int dev_notice (int *,char*,char*) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 int netif_carrier_on (int ) ;
 int netif_wake_queue (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ssi_waketest (struct hsi_client*,int ) ;
 int ssip_error (struct hsi_client*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void ssip_rx_waketest(struct hsi_client *cl, u32 cmd)
{
 struct ssi_protocol *ssi = hsi_client_drvdata(cl);
 unsigned int wkres = SSIP_PAYLOAD(cmd);

 spin_lock_bh(&ssi->lock);
 if (ssi->main_state != HANDSHAKE) {
  dev_dbg(&cl->device, "wake lines test ignored M(%d)\n",
       ssi->main_state);
  spin_unlock_bh(&ssi->lock);
  return;
 }
 spin_unlock_bh(&ssi->lock);

 if (test_and_clear_bit(SSIP_WAKETEST_FLAG, &ssi->flags))
  ssi_waketest(cl, 0);

 spin_lock_bh(&ssi->lock);
 ssi->main_state = ACTIVE;
 del_timer(&ssi->tx_wd);
 spin_unlock_bh(&ssi->lock);

 dev_notice(&cl->device, "WAKELINES TEST %s\n",
    wkres & SSIP_WAKETEST_FAILED ? "FAILED" : "OK");
 if (wkres & SSIP_WAKETEST_FAILED) {
  ssip_error(cl);
  return;
 }
 dev_dbg(&cl->device, "CMT is ONLINE\n");
 netif_wake_queue(ssi->netdev);
 netif_carrier_on(ssi->netdev);
}
