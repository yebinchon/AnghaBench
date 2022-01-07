
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qup_i2c_block {int tx_fifo_free; int is_tx_blk_mode; } ;
struct qup_i2c_dev {int irq; int msg; int out_fifo_sz; int xfer; scalar_t__ base; int clk_ctl; struct qup_i2c_block blk; } ;


 int ONE_BYTE ;
 scalar_t__ QUP_I2C_CLK_CTL ;
 int QUP_PAUSE_STATE ;
 int QUP_RUN_STATE ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int qup_i2c_bus_active (struct qup_i2c_dev*,int ) ;
 int qup_i2c_change_state (struct qup_i2c_dev*,int ) ;
 int qup_i2c_clear_blk_v1 (struct qup_i2c_block*) ;
 int qup_i2c_conf_v1 (struct qup_i2c_dev*) ;
 int qup_i2c_wait_for_complete (struct qup_i2c_dev*,int ) ;
 int qup_i2c_write_rx_tags_v1 (struct qup_i2c_dev*) ;
 int qup_i2c_write_tx_fifo_v1 (struct qup_i2c_dev*) ;
 int reinit_completion (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int qup_i2c_conf_xfer_v1(struct qup_i2c_dev *qup, bool is_rx)
{
 struct qup_i2c_block *blk = &qup->blk;
 int ret;

 qup_i2c_clear_blk_v1(blk);
 qup_i2c_conf_v1(qup);
 ret = qup_i2c_change_state(qup, QUP_RUN_STATE);
 if (ret)
  return ret;

 writel(qup->clk_ctl, qup->base + QUP_I2C_CLK_CTL);

 ret = qup_i2c_change_state(qup, QUP_PAUSE_STATE);
 if (ret)
  return ret;

 reinit_completion(&qup->xfer);
 enable_irq(qup->irq);
 if (!blk->is_tx_blk_mode) {
  blk->tx_fifo_free = qup->out_fifo_sz;

  if (is_rx)
   qup_i2c_write_rx_tags_v1(qup);
  else
   qup_i2c_write_tx_fifo_v1(qup);
 }

 ret = qup_i2c_change_state(qup, QUP_RUN_STATE);
 if (ret)
  goto err;

 ret = qup_i2c_wait_for_complete(qup, qup->msg);
 if (ret)
  goto err;

 ret = qup_i2c_bus_active(qup, ONE_BYTE);

err:
 disable_irq(qup->irq);
 return ret;
}
