
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_protocol {int lock; int txqueue; } ;
struct hsi_msg {scalar_t__ status; int complete; struct hsi_client* cl; } ;
struct hsi_client {int device; } ;


 scalar_t__ HSI_STATUS_ERROR ;
 int SENDING_SWBREAK ;
 int SSIP_SWBREAK_CMD ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int hsi_async_write (struct hsi_client*,struct hsi_msg*) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct hsi_msg* ssip_claim_cmd (struct ssi_protocol*) ;
 int ssip_error (struct hsi_client*) ;
 int ssip_free_data (struct hsi_msg*) ;
 int ssip_set_cmd (struct hsi_msg*,int ) ;
 int ssip_set_txstate (struct ssi_protocol*,int ) ;
 int ssip_swbreak_complete ;
 int ssip_xmit (struct hsi_client*) ;

__attribute__((used)) static void ssip_tx_data_complete(struct hsi_msg *msg)
{
 struct hsi_client *cl = msg->cl;
 struct ssi_protocol *ssi = hsi_client_drvdata(cl);
 struct hsi_msg *cmsg;

 if (msg->status == HSI_STATUS_ERROR) {
  dev_err(&cl->device, "TX data error\n");
  ssip_error(cl);
  goto out;
 }
 spin_lock_bh(&ssi->lock);
 if (list_empty(&ssi->txqueue)) {
  ssip_set_txstate(ssi, SENDING_SWBREAK);
  spin_unlock_bh(&ssi->lock);
  cmsg = ssip_claim_cmd(ssi);
  ssip_set_cmd(cmsg, SSIP_SWBREAK_CMD);
  cmsg->complete = ssip_swbreak_complete;
  dev_dbg(&cl->device, "Send SWBREAK\n");
  hsi_async_write(cl, cmsg);
 } else {
  spin_unlock_bh(&ssi->lock);
  ssip_xmit(cl);
 }
out:
 ssip_free_data(msg);
}
