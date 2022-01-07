
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qup_i2c_block {int rx_tags_fetched; int rx_bytes_read; int cur_blk_len; } ;
struct qup_i2c_dev {struct qup_i2c_block blk; } ;


 int qup_i2c_recv_data (struct qup_i2c_dev*) ;
 int qup_i2c_recv_tags (struct qup_i2c_dev*) ;

__attribute__((used)) static void qup_i2c_read_rx_fifo_v2(struct qup_i2c_dev *qup)
{
 struct qup_i2c_block *blk = &qup->blk;

 if (!blk->rx_tags_fetched) {
  qup_i2c_recv_tags(qup);
  blk->rx_tags_fetched = 1;
 }

 qup_i2c_recv_data(qup);
 if (!blk->cur_blk_len)
  blk->rx_bytes_read = 1;
}
