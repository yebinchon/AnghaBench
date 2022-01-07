
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qup_i2c_block {unsigned int tx_fifo_data_pos; unsigned int tx_fifo_data; scalar_t__ tx_fifo_free; } ;
struct qup_i2c_dev {scalar_t__ base; struct qup_i2c_block blk; } ;


 scalar_t__ QUP_OUT_FIFO_BASE ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void
qup_i2c_write_blk_data(struct qup_i2c_dev *qup, u8 **data, unsigned int *len)
{
 struct qup_i2c_block *blk = &qup->blk;
 unsigned int j;

 for (j = blk->tx_fifo_data_pos; *len && blk->tx_fifo_free;
      (*len)--, blk->tx_fifo_free--) {
  blk->tx_fifo_data |= *(*data)++ << (j * 8);
  if (j == 3) {
   writel(blk->tx_fifo_data,
          qup->base + QUP_OUT_FIFO_BASE);
   blk->tx_fifo_data = 0x0;
   j = 0;
  } else {
   j++;
  }
 }

 blk->tx_fifo_data_pos = j;
}
