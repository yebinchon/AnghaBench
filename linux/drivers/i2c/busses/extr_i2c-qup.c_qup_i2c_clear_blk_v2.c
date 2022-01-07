
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qup_i2c_block {int send_last_word; int tx_tags_sent; int rx_tags_fetched; int rx_bytes_read; scalar_t__ fifo_available; scalar_t__ rx_fifo_data_pos; scalar_t__ rx_fifo_data; scalar_t__ tx_fifo_free; scalar_t__ tx_fifo_data_pos; scalar_t__ tx_fifo_data; } ;



__attribute__((used)) static void qup_i2c_clear_blk_v2(struct qup_i2c_block *blk)
{
 blk->send_last_word = 0;
 blk->tx_tags_sent = 0;
 blk->tx_fifo_data = 0;
 blk->tx_fifo_data_pos = 0;
 blk->tx_fifo_free = 0;

 blk->rx_tags_fetched = 0;
 blk->rx_bytes_read = 0;
 blk->rx_fifo_data = 0;
 blk->rx_fifo_data_pos = 0;
 blk->fifo_available = 0;
}
