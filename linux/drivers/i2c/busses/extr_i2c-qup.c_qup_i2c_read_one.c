
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qup_i2c_block {int total_tx_len; int total_rx_len; } ;
struct qup_i2c_dev {TYPE_1__* msg; scalar_t__ pos; struct qup_i2c_block blk; } ;
struct TYPE_2__ {int len; } ;


 int qup_i2c_conf_xfer_v1 (struct qup_i2c_dev*,int) ;

__attribute__((used)) static int qup_i2c_read_one(struct qup_i2c_dev *qup)
{
 struct qup_i2c_block *blk = &qup->blk;

 qup->pos = 0;
 blk->total_tx_len = 2;
 blk->total_rx_len = qup->msg->len;

 return qup_i2c_conf_xfer_v1(qup, 1);
}
