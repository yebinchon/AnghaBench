
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qup_i2c_block {int is_tx_blk_mode; scalar_t__ total_tx_len; int is_rx_blk_mode; scalar_t__ total_rx_len; } ;
struct qup_i2c_dev {scalar_t__ out_fifo_sz; scalar_t__ in_fifo_sz; scalar_t__ base; struct qup_i2c_block blk; } ;


 int I2C_MINI_CORE ;
 int I2C_N_VAL ;
 scalar_t__ QUP_CONFIG ;
 int QUP_INPUT_BLK_MODE ;
 scalar_t__ QUP_IO_MODE ;
 scalar_t__ QUP_MX_INPUT_CNT ;
 scalar_t__ QUP_MX_OUTPUT_CNT ;
 scalar_t__ QUP_MX_READ_CNT ;
 scalar_t__ QUP_MX_WRITE_CNT ;
 int QUP_NO_INPUT ;
 int QUP_OUTPUT_BLK_MODE ;
 int QUP_REPACK_EN ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void qup_i2c_conf_v1(struct qup_i2c_dev *qup)
{
 struct qup_i2c_block *blk = &qup->blk;
 u32 qup_config = I2C_MINI_CORE | I2C_N_VAL;
 u32 io_mode = QUP_REPACK_EN;

 blk->is_tx_blk_mode =
  blk->total_tx_len > qup->out_fifo_sz ? 1 : 0;
 blk->is_rx_blk_mode =
  blk->total_rx_len > qup->in_fifo_sz ? 1 : 0;

 if (blk->is_tx_blk_mode) {
  io_mode |= QUP_OUTPUT_BLK_MODE;
  writel(0, qup->base + QUP_MX_WRITE_CNT);
  writel(blk->total_tx_len, qup->base + QUP_MX_OUTPUT_CNT);
 } else {
  writel(0, qup->base + QUP_MX_OUTPUT_CNT);
  writel(blk->total_tx_len, qup->base + QUP_MX_WRITE_CNT);
 }

 if (blk->total_rx_len) {
  if (blk->is_rx_blk_mode) {
   io_mode |= QUP_INPUT_BLK_MODE;
   writel(0, qup->base + QUP_MX_READ_CNT);
   writel(blk->total_rx_len, qup->base + QUP_MX_INPUT_CNT);
  } else {
   writel(0, qup->base + QUP_MX_INPUT_CNT);
   writel(blk->total_rx_len, qup->base + QUP_MX_READ_CNT);
  }
 } else {
  qup_config |= QUP_NO_INPUT;
 }

 writel(qup_config, qup->base + QUP_CONFIG);
 writel(io_mode, qup->base + QUP_IO_MODE);
}
