
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_i2c_data {int pos; TYPE_1__* msg; } ;
struct TYPE_2__ {int len; } ;


 int OP_TX ;
 int OP_TX_FIRST ;
 int OP_TX_STOP ;
 int i2c_op (struct sh_mobile_i2c_data*,int ) ;

__attribute__((used)) static int sh_mobile_i2c_isr_tx(struct sh_mobile_i2c_data *pd)
{
 if (pd->pos == pd->msg->len) {
  i2c_op(pd, OP_TX_STOP);
  return 1;
 }

 if (pd->pos == -1)
  i2c_op(pd, OP_TX_FIRST);
 else
  i2c_op(pd, OP_TX);

 pd->pos++;
 return 0;
}
