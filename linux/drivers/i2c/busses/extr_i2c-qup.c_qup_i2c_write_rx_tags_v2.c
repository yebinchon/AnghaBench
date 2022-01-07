
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qup_i2c_block {int tx_fifo_data; scalar_t__ tx_fifo_data_pos; int tx_tag_len; int cur_tx_tags; } ;
struct qup_i2c_dev {scalar_t__ base; struct qup_i2c_block blk; } ;


 scalar_t__ QUP_OUT_FIFO_BASE ;
 int qup_i2c_write_blk_data (struct qup_i2c_dev*,int *,int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void qup_i2c_write_rx_tags_v2(struct qup_i2c_dev *qup)
{
 struct qup_i2c_block *blk = &qup->blk;

 qup_i2c_write_blk_data(qup, &blk->cur_tx_tags, &blk->tx_tag_len);
 if (blk->tx_fifo_data_pos)
  writel(blk->tx_fifo_data, qup->base + QUP_OUT_FIFO_BASE);
}
