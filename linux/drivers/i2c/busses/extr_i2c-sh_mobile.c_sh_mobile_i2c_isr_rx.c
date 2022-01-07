
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_i2c_data {int pos; TYPE_1__* msg; scalar_t__ stop_after_dma; } ;
struct TYPE_2__ {int len; unsigned char* buf; } ;


 int OP_RX ;
 int OP_RX_STOP ;
 int OP_RX_STOP_DATA ;
 int OP_TX_FIRST ;
 int OP_TX_TO_RX ;
 unsigned char i2c_op (struct sh_mobile_i2c_data*,int ) ;

__attribute__((used)) static int sh_mobile_i2c_isr_rx(struct sh_mobile_i2c_data *pd)
{
 unsigned char data;
 int real_pos;


 real_pos = pd->pos - 2;

 if (pd->pos == -1) {
  i2c_op(pd, OP_TX_FIRST);
 } else if (pd->pos == 0) {
  i2c_op(pd, OP_TX_TO_RX);
 } else if (pd->pos == pd->msg->len) {
  if (pd->stop_after_dma) {

   i2c_op(pd, OP_RX_STOP);
   pd->pos++;
   goto done;
  }

  if (real_pos < 0)
   i2c_op(pd, OP_RX_STOP);
  else
   data = i2c_op(pd, OP_RX_STOP_DATA);
 } else if (real_pos >= 0) {
  data = i2c_op(pd, OP_RX);
 }

 if (real_pos >= 0)
  pd->msg->buf[real_pos] = data;
 done:
 pd->pos++;
 return pd->pos == (pd->msg->len + 2);
}
