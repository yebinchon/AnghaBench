
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qup_i2c_block {int rx_bytes_read; scalar_t__ fifo_available; } ;
struct qup_i2c_dev {scalar_t__ pos; scalar_t__ base; struct i2c_msg* msg; struct qup_i2c_block blk; } ;
struct i2c_msg {scalar_t__ len; int* buf; } ;


 scalar_t__ QUP_IN_FIFO_BASE ;
 int QUP_MSW_SHIFT ;
 int readl (scalar_t__) ;

__attribute__((used)) static void qup_i2c_read_rx_fifo_v1(struct qup_i2c_dev *qup)
{
 struct qup_i2c_block *blk = &qup->blk;
 struct i2c_msg *msg = qup->msg;
 u32 val = 0;
 int idx = 0;

 while (blk->fifo_available && qup->pos < msg->len) {
  if ((idx & 1) == 0) {

   val = readl(qup->base + QUP_IN_FIFO_BASE);
   msg->buf[qup->pos++] = val & 0xFF;
  } else {
   msg->buf[qup->pos++] = val >> QUP_MSW_SHIFT;
  }
  idx++;
  blk->fifo_available--;
 }

 if (qup->pos == msg->len)
  blk->rx_bytes_read = 1;
}
