
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct armada_37xx_rwtm_rx_msg {int* status; int retval; } ;
struct mox_rwtm {int serial_number; int board_version; int ram_size; int has_board_info; int has_pubkey; int pubkey; int dev; int cmd_done; int mbox; int mac_address2; int mac_address1; struct armada_37xx_rwtm_rx_msg reply; } ;
struct armada_37xx_rwtm_tx_msg {void* command; } ;


 int ENODATA ;
 int HZ ;
 void* MBOX_CMD_BOARD_INFO ;
 void* MBOX_CMD_ECDSA_PUB_KEY ;
 int dev_warn (int ,char*) ;
 int mbox_send_message (int ,struct armada_37xx_rwtm_tx_msg*) ;
 int mox_get_status (void*,int ) ;
 int pr_info (char*,int) ;
 int reply_to_mac_addr (int ,int,int) ;
 int sprintf (int ,char*,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int mox_get_board_info(struct mox_rwtm *rwtm)
{
 struct armada_37xx_rwtm_tx_msg msg;
 struct armada_37xx_rwtm_rx_msg *reply = &rwtm->reply;
 int ret;

 msg.command = MBOX_CMD_BOARD_INFO;
 ret = mbox_send_message(rwtm->mbox, &msg);
 if (ret < 0)
  return ret;

 ret = wait_for_completion_timeout(&rwtm->cmd_done, HZ / 2);
 if (ret < 0)
  return ret;

 ret = mox_get_status(MBOX_CMD_BOARD_INFO, reply->retval);
 if (ret < 0 && ret != -ENODATA) {
  return ret;
 } else if (ret == -ENODATA) {
  dev_warn(rwtm->dev,
    "Board does not have manufacturing information burned!\n");
 } else {
  rwtm->serial_number = reply->status[1];
  rwtm->serial_number <<= 32;
  rwtm->serial_number |= reply->status[0];
   rwtm->board_version = reply->status[2];
  rwtm->ram_size = reply->status[3];
  reply_to_mac_addr(rwtm->mac_address1, reply->status[4],
      reply->status[5]);
  reply_to_mac_addr(rwtm->mac_address2, reply->status[6],
      reply->status[7]);
  rwtm->has_board_info = 1;

  pr_info("Turris Mox serial number %016llX\n",
   rwtm->serial_number);
  pr_info("           board version %i\n", rwtm->board_version);
  pr_info("           burned RAM size %i MiB\n", rwtm->ram_size);
 }

 msg.command = MBOX_CMD_ECDSA_PUB_KEY;
 ret = mbox_send_message(rwtm->mbox, &msg);
 if (ret < 0)
  return ret;

 ret = wait_for_completion_timeout(&rwtm->cmd_done, HZ / 2);
 if (ret < 0)
  return ret;

 ret = mox_get_status(MBOX_CMD_ECDSA_PUB_KEY, reply->retval);
 if (ret < 0 && ret != -ENODATA) {
  return ret;
 } else if (ret == -ENODATA) {
  dev_warn(rwtm->dev, "Board has no public key burned!\n");
 } else {
  u32 *s = reply->status;

  rwtm->has_pubkey = 1;
  sprintf(rwtm->pubkey,
   "%06x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x",
   ret, s[0], s[1], s[2], s[3], s[4], s[5], s[6], s[7],
   s[8], s[9], s[10], s[11], s[12], s[13], s[14], s[15]);
 }

 return 0;
}
