
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3x_i2c {int error; int busy; int wait; int state; scalar_t__ is_last_msg; int * msg; scalar_t__ processed; } ;


 int REG_CON ;
 unsigned int REG_CON_STOP ;
 unsigned int REG_CON_TUNING_MASK ;
 int REG_IEN ;
 unsigned int REG_INT_STOP ;
 int STATE_IDLE ;
 int STATE_STOP ;
 unsigned int i2c_readl (struct rk3x_i2c*,int ) ;
 int i2c_writel (struct rk3x_i2c*,unsigned int,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void rk3x_i2c_stop(struct rk3x_i2c *i2c, int error)
{
 unsigned int ctrl;

 i2c->processed = 0;
 i2c->msg = ((void*)0);
 i2c->error = error;

 if (i2c->is_last_msg) {

  i2c_writel(i2c, REG_INT_STOP, REG_IEN);

  i2c->state = STATE_STOP;

  ctrl = i2c_readl(i2c, REG_CON);
  ctrl |= REG_CON_STOP;
  i2c_writel(i2c, ctrl, REG_CON);
 } else {

  i2c->busy = 0;
  i2c->state = STATE_IDLE;






  ctrl = i2c_readl(i2c, REG_CON) & REG_CON_TUNING_MASK;
  i2c_writel(i2c, ctrl, REG_CON);


  wake_up(&i2c->wait);
 }
}
