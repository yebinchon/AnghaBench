
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_protocol {scalar_t__ main_state; scalar_t__ recv_state; int lock; } ;
struct hsi_msg {int complete; } ;
struct hsi_client {int device; } ;


 scalar_t__ ACTIVE ;
 scalar_t__ RECV_READY ;
 int SSIP_READY_CMD ;
 int dev_dbg (int *,char*,...) ;
 int hsi_async_write (struct hsi_client*,struct hsi_msg*) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct hsi_msg* ssip_claim_cmd (struct ssi_protocol*) ;
 int ssip_release_cmd ;
 int ssip_set_cmd (struct hsi_msg*,int ) ;
 int ssip_set_rxstate (struct ssi_protocol*,scalar_t__) ;

__attribute__((used)) static void ssip_start_rx(struct hsi_client *cl)
{
 struct ssi_protocol *ssi = hsi_client_drvdata(cl);
 struct hsi_msg *msg;

 dev_dbg(&cl->device, "RX start M(%d) R(%d)\n", ssi->main_state,
      ssi->recv_state);
 spin_lock_bh(&ssi->lock);




 if ((ssi->main_state != ACTIVE) || (ssi->recv_state == RECV_READY)) {
  spin_unlock_bh(&ssi->lock);
  return;
 }
 ssip_set_rxstate(ssi, RECV_READY);
 spin_unlock_bh(&ssi->lock);

 msg = ssip_claim_cmd(ssi);
 ssip_set_cmd(msg, SSIP_READY_CMD);
 msg->complete = ssip_release_cmd;
 dev_dbg(&cl->device, "Send READY\n");
 hsi_async_write(cl, msg);
}
