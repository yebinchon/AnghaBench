
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smscore_device_t {int context; int (* sendrequest_handler ) (int ,struct sms_msg_data*,int) ;int board_id; } ;
struct TYPE_2__ {int msg_length; int msg_type; scalar_t__ msg_flags; int msg_dst_id; scalar_t__ msg_src_id; } ;
struct sms_msg_data {scalar_t__* msg_data; TYPE_1__ x_msg_header; } ;
struct sms_board {scalar_t__ crystal; scalar_t__ mtu; } ;
typedef int mtu_msg ;
typedef int crys_msg ;


 int EINVAL ;
 int HIF_TASK ;
 int MSG_SMS_NEW_CRYSTAL_REQ ;
 int MSG_SMS_SET_MAX_TX_MSG_LEN_REQ ;
 int SMS_INIT_MSG (TYPE_1__*,int ,int) ;
 int pr_debug (char*,scalar_t__) ;
 int pr_err (char*) ;
 struct sms_board* sms_get_board (int ) ;
 int stub1 (int ,struct sms_msg_data*,int) ;
 int stub2 (int ,struct sms_msg_data*,int) ;

__attribute__((used)) static int smscore_configure_board(struct smscore_device_t *coredev)
{
 struct sms_board *board;

 board = sms_get_board(coredev->board_id);
 if (!board) {
  pr_err("no board configuration exist.\n");
  return -EINVAL;
 }

 if (board->mtu) {
  struct sms_msg_data mtu_msg;
  pr_debug("set max transmit unit %d\n", board->mtu);

  mtu_msg.x_msg_header.msg_src_id = 0;
  mtu_msg.x_msg_header.msg_dst_id = HIF_TASK;
  mtu_msg.x_msg_header.msg_flags = 0;
  mtu_msg.x_msg_header.msg_type = MSG_SMS_SET_MAX_TX_MSG_LEN_REQ;
  mtu_msg.x_msg_header.msg_length = sizeof(mtu_msg);
  mtu_msg.msg_data[0] = board->mtu;

  coredev->sendrequest_handler(coredev->context, &mtu_msg,
          sizeof(mtu_msg));
 }

 if (board->crystal) {
  struct sms_msg_data crys_msg;
  pr_debug("set crystal value %d\n", board->crystal);

  SMS_INIT_MSG(&crys_msg.x_msg_header,
    MSG_SMS_NEW_CRYSTAL_REQ,
    sizeof(crys_msg));
  crys_msg.msg_data[0] = board->crystal;

  coredev->sendrequest_handler(coredev->context, &crys_msg,
          sizeof(crys_msg));
 }

 return 0;
}
