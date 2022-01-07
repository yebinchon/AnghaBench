
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rk3x_i2c {int is_last_msg; int error; int lock; int clk; int pclk; int state; int dev; int busy; int wait; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {scalar_t__ algo_data; } ;


 int ETIMEDOUT ;
 int REG_CON ;
 int REG_CON_EN ;
 int REG_CON_STOP ;
 int REG_CON_TUNING_MASK ;
 int REG_IEN ;
 int REG_IPD ;
 int STATE_IDLE ;
 int WAIT_TIMEOUT ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (int ,char*,...) ;
 int i2c_readl (struct rk3x_i2c*,int ) ;
 int i2c_writel (struct rk3x_i2c*,int,int ) ;
 int msecs_to_jiffies (int ) ;
 int rk3x_i2c_setup (struct rk3x_i2c*,struct i2c_msg*,int) ;
 int rk3x_i2c_start (struct rk3x_i2c*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int rk3x_i2c_xfer(struct i2c_adapter *adap,
    struct i2c_msg *msgs, int num)
{
 struct rk3x_i2c *i2c = (struct rk3x_i2c *)adap->algo_data;
 unsigned long timeout, flags;
 u32 val;
 int ret = 0;
 int i;

 spin_lock_irqsave(&i2c->lock, flags);

 clk_enable(i2c->clk);
 clk_enable(i2c->pclk);

 i2c->is_last_msg = 0;





 for (i = 0; i < num; i += ret) {
  ret = rk3x_i2c_setup(i2c, msgs + i, num - i);

  if (ret < 0) {
   dev_err(i2c->dev, "rk3x_i2c_setup() failed\n");
   break;
  }

  if (i + ret >= num)
   i2c->is_last_msg = 1;

  spin_unlock_irqrestore(&i2c->lock, flags);

  rk3x_i2c_start(i2c);

  timeout = wait_event_timeout(i2c->wait, !i2c->busy,
          msecs_to_jiffies(WAIT_TIMEOUT));

  spin_lock_irqsave(&i2c->lock, flags);

  if (timeout == 0) {
   dev_err(i2c->dev, "timeout, ipd: 0x%02x, state: %d\n",
    i2c_readl(i2c, REG_IPD), i2c->state);


   i2c_writel(i2c, 0, REG_IEN);
   val = i2c_readl(i2c, REG_CON) & REG_CON_TUNING_MASK;
   val |= REG_CON_EN | REG_CON_STOP;
   i2c_writel(i2c, val, REG_CON);

   i2c->state = STATE_IDLE;

   ret = -ETIMEDOUT;
   break;
  }

  if (i2c->error) {
   ret = i2c->error;
   break;
  }
 }

 clk_disable(i2c->pclk);
 clk_disable(i2c->clk);

 spin_unlock_irqrestore(&i2c->lock, flags);

 return ret < 0 ? ret : num;
}
