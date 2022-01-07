
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qup_i2c_block {unsigned int count; unsigned int pos; unsigned int cur_blk_len; int* cur_data; int rx_tag_len; unsigned int total_rx_len; int data_len; scalar_t__ tx_tag_len; scalar_t__ total_tx_len; int cur_tx_tags; int tags; } ;
struct qup_i2c_dev {int is_smbus_read; scalar_t__ blk_xfer_limit; int is_last; struct i2c_msg* msg; struct qup_i2c_block blk; } ;
struct i2c_msg {int* buf; int len; } ;


 int EPROTO ;
 int I2C_SMBUS_BLOCK_MAX ;
 scalar_t__ QUP_READ_LIMIT ;
 scalar_t__ RECV_MAX_DATA_LEN ;
 scalar_t__ qup_i2c_check_msg_len (struct i2c_msg*) ;
 int qup_i2c_conf_xfer_v2 (struct qup_i2c_dev*,int,int,int) ;
 unsigned int qup_i2c_get_data_len (struct qup_i2c_dev*) ;
 int qup_i2c_set_blk_data (struct qup_i2c_dev*,struct i2c_msg*) ;
 scalar_t__ qup_i2c_set_tags (int ,struct qup_i2c_dev*,struct i2c_msg*) ;

__attribute__((used)) static int qup_i2c_xfer_v2_msg(struct qup_i2c_dev *qup, int msg_id, bool is_rx)
{
 int ret = 0;
 unsigned int data_len, i;
 struct i2c_msg *msg = qup->msg;
 struct qup_i2c_block *blk = &qup->blk;
 u8 *msg_buf = msg->buf;

 qup->blk_xfer_limit = is_rx ? RECV_MAX_DATA_LEN : QUP_READ_LIMIT;
 qup_i2c_set_blk_data(qup, msg);

 for (i = 0; i < blk->count; i++) {
  data_len = qup_i2c_get_data_len(qup);
  blk->pos = i;
  blk->cur_tx_tags = blk->tags;
  blk->cur_blk_len = data_len;
  blk->tx_tag_len =
   qup_i2c_set_tags(blk->cur_tx_tags, qup, qup->msg);

  blk->cur_data = msg_buf;

  if (is_rx) {
   blk->total_tx_len = blk->tx_tag_len;
   blk->rx_tag_len = 2;
   blk->total_rx_len = blk->rx_tag_len + data_len;
  } else {
   blk->total_tx_len = blk->tx_tag_len + data_len;
   blk->total_rx_len = 0;
  }

  ret = qup_i2c_conf_xfer_v2(qup, is_rx, !msg_id && !i,
        !qup->is_last || i < blk->count - 1);
  if (ret)
   return ret;


  if (qup_i2c_check_msg_len(msg) && msg->len == 1 &&
      !qup->is_smbus_read) {
   if (msg->buf[0] > I2C_SMBUS_BLOCK_MAX)
    return -EPROTO;

   msg->len = msg->buf[0];
   qup->is_smbus_read = 1;
   ret = qup_i2c_xfer_v2_msg(qup, msg_id, 1);
   qup->is_smbus_read = 0;
   if (ret)
    return ret;

   msg->len += 1;
  }

  msg_buf += data_len;
  blk->data_len -= qup->blk_xfer_limit;
 }

 return ret;
}
