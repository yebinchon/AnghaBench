
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_i2c {int msg_idx; int wait; int use_pio; scalar_t__ msg_num; int * msg; scalar_t__ msg_ptr; } ;


 int wake_up (int *) ;

__attribute__((used)) static void i2c_pxa_master_complete(struct pxa_i2c *i2c, int ret)
{
 i2c->msg_ptr = 0;
 i2c->msg = ((void*)0);
 i2c->msg_idx ++;
 i2c->msg_num = 0;
 if (ret)
  i2c->msg_idx = ret;
 if (!i2c->use_pio)
  wake_up(&i2c->wait);
}
