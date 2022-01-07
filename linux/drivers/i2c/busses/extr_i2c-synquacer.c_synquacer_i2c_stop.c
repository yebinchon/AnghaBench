
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synquacer_i2c {int msg_idx; int completion; scalar_t__ msg_num; int * msg; scalar_t__ msg_ptr; int state; scalar_t__ base; } ;


 int STATE_IDLE ;
 scalar_t__ SYNQUACER_I2C_REG_BCR ;
 int complete (int *) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void synquacer_i2c_stop(struct synquacer_i2c *i2c, int ret)
{





 writeb(0, i2c->base + SYNQUACER_I2C_REG_BCR);

 i2c->state = STATE_IDLE;

 i2c->msg_ptr = 0;
 i2c->msg = ((void*)0);
 i2c->msg_idx++;
 i2c->msg_num = 0;
 if (ret)
  i2c->msg_idx = ret;

 complete(&i2c->completion);
}
