
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qup_i2c_block {int cur_data; int tx_fifo_free; int is_tx_blk_mode; } ;
struct qup_i2c_dev {int irq; int out_fifo_sz; int xfer; scalar_t__ base; int clk_ctl; int config_run; scalar_t__ is_smbus_read; struct i2c_msg* msg; struct qup_i2c_block blk; } ;
struct i2c_msg {int dummy; } ;


 scalar_t__ QUP_I2C_CLK_CTL ;
 int QUP_I2C_MX_CONFIG_DURING_RUN ;
 int QUP_PAUSE_STATE ;
 int QUP_RUN_STATE ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int qup_i2c_change_state (struct qup_i2c_dev*,int ) ;
 scalar_t__ qup_i2c_check_msg_len (struct i2c_msg*) ;
 int qup_i2c_clear_blk_v2 (struct qup_i2c_block*) ;
 int qup_i2c_conf_count_v2 (struct qup_i2c_dev*) ;
 int qup_i2c_wait_for_complete (struct qup_i2c_dev*,struct i2c_msg*) ;
 int qup_i2c_write_rx_tags_v2 (struct qup_i2c_dev*) ;
 int qup_i2c_write_tx_fifo_v2 (struct qup_i2c_dev*) ;
 int reinit_completion (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int
qup_i2c_conf_xfer_v2(struct qup_i2c_dev *qup, bool is_rx, bool is_first,
       bool change_pause_state)
{
 struct qup_i2c_block *blk = &qup->blk;
 struct i2c_msg *msg = qup->msg;
 int ret;






 if (qup_i2c_check_msg_len(msg)) {
  if (qup->is_smbus_read) {





   blk->cur_data += 1;
   is_first = 0;
  } else {
   change_pause_state = 0;
  }
 }

 qup->config_run = is_first ? 0 : QUP_I2C_MX_CONFIG_DURING_RUN;

 qup_i2c_clear_blk_v2(blk);
 qup_i2c_conf_count_v2(qup);


 if (is_first) {
  ret = qup_i2c_change_state(qup, QUP_RUN_STATE);
  if (ret)
   return ret;

  writel(qup->clk_ctl, qup->base + QUP_I2C_CLK_CTL);

  ret = qup_i2c_change_state(qup, QUP_PAUSE_STATE);
  if (ret)
   return ret;
 }

 reinit_completion(&qup->xfer);
 enable_irq(qup->irq);




 if (!blk->is_tx_blk_mode) {
  blk->tx_fifo_free = qup->out_fifo_sz;

  if (is_rx)
   qup_i2c_write_rx_tags_v2(qup);
  else
   qup_i2c_write_tx_fifo_v2(qup);
 }

 ret = qup_i2c_change_state(qup, QUP_RUN_STATE);
 if (ret)
  goto err;

 ret = qup_i2c_wait_for_complete(qup, msg);
 if (ret)
  goto err;


 if (change_pause_state) {
  ret = qup_i2c_change_state(qup, QUP_PAUSE_STATE);
  if (ret)
   goto err;
 }

err:
 disable_irq(qup->irq);
 return ret;
}
