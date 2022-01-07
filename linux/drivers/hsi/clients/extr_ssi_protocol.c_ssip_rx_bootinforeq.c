
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ssi_protocol {int main_state; int lock; int tx_wd; int flags; } ;
struct hsi_msg {int complete; } ;
struct hsi_client {int device; } ;





 int SSIP_BOOTINFO_RESP_CMD (int ) ;
 scalar_t__ SSIP_CMT_LOADER_SYNC ;
 int SSIP_DATA_VERSION (scalar_t__) ;
 int SSIP_LOCAL_VERID ;
 int SSIP_WAKETEST_FLAG ;
 int SSIP_WDTOUT ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int hsi_async_write (struct hsi_client*,struct hsi_msg*) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ssi_waketest (struct hsi_client*,int) ;
 struct hsi_msg* ssip_claim_cmd (struct ssi_protocol*) ;
 int ssip_error (struct hsi_client*) ;
 int ssip_release_cmd ;
 int ssip_set_cmd (struct hsi_msg*,int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void ssip_rx_bootinforeq(struct hsi_client *cl, u32 cmd)
{
 struct ssi_protocol *ssi = hsi_client_drvdata(cl);
 struct hsi_msg *msg;


 if (cmd == SSIP_CMT_LOADER_SYNC)
  return;

 switch (ssi->main_state) {
 case 130:
  dev_err(&cl->device, "Boot info req on active state\n");
  ssip_error(cl);

 case 128:
 case 129:
  spin_lock_bh(&ssi->lock);
  ssi->main_state = 129;
  spin_unlock_bh(&ssi->lock);

  if (!test_and_set_bit(SSIP_WAKETEST_FLAG, &ssi->flags))
   ssi_waketest(cl, 1);

  spin_lock_bh(&ssi->lock);

  mod_timer(&ssi->tx_wd, jiffies + msecs_to_jiffies(SSIP_WDTOUT));
  spin_unlock_bh(&ssi->lock);
  dev_dbg(&cl->device, "Send BOOTINFO_RESP\n");
  if (SSIP_DATA_VERSION(cmd) != SSIP_LOCAL_VERID)
   dev_warn(&cl->device, "boot info req verid mismatch\n");
  msg = ssip_claim_cmd(ssi);
  ssip_set_cmd(msg, SSIP_BOOTINFO_RESP_CMD(SSIP_LOCAL_VERID));
  msg->complete = ssip_release_cmd;
  hsi_async_write(cl, msg);
  break;
 default:
  dev_dbg(&cl->device, "Wrong state M(%d)\n", ssi->main_state);
  break;
 }
}
