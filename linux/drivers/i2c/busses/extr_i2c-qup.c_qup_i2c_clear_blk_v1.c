
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qup_i2c_block {int rx_bytes_read; scalar_t__ fifo_available; scalar_t__ tx_fifo_free; } ;



__attribute__((used)) static void qup_i2c_clear_blk_v1(struct qup_i2c_block *blk)
{
 blk->tx_fifo_free = 0;
 blk->fifo_available = 0;
 blk->rx_bytes_read = 0;
}
