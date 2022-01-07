
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3x_i2c {int busy; int wait; int state; int dev; } ;


 int EIO ;
 int REG_CON ;
 unsigned int REG_CON_STOP ;
 unsigned int REG_INT_STOP ;
 int REG_IPD ;
 int STATE_IDLE ;
 int dev_err (int ,char*,unsigned int) ;
 unsigned int i2c_readl (struct rk3x_i2c*,int ) ;
 int i2c_writel (struct rk3x_i2c*,unsigned int,int ) ;
 int rk3x_i2c_clean_ipd (struct rk3x_i2c*) ;
 int rk3x_i2c_stop (struct rk3x_i2c*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void rk3x_i2c_handle_stop(struct rk3x_i2c *i2c, unsigned int ipd)
{
 unsigned int con;

 if (!(ipd & REG_INT_STOP)) {
  rk3x_i2c_stop(i2c, -EIO);
  dev_err(i2c->dev, "unexpected irq in STOP: 0x%x\n", ipd);
  rk3x_i2c_clean_ipd(i2c);
  return;
 }


 i2c_writel(i2c, REG_INT_STOP, REG_IPD);


 con = i2c_readl(i2c, REG_CON);
 con &= ~REG_CON_STOP;
 i2c_writel(i2c, con, REG_CON);

 i2c->busy = 0;
 i2c->state = STATE_IDLE;


 wake_up(&i2c->wait);
}
