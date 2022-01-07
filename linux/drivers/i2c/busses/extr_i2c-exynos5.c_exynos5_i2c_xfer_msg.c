
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; } ;
struct exynos5_i2c {int state; int dev; int msg_complete; scalar_t__ trans_done; scalar_t__ msg_ptr; struct i2c_msg* msg; } ;


 int ETIMEDOUT ;
 int EXYNOS5_I2C_TIMEOUT ;
 int I2C_M_RD ;
 int dev_warn (int ,char*,char*) ;
 int exynos5_i2c_message_start (struct exynos5_i2c*,int) ;
 int exynos5_i2c_reset (struct exynos5_i2c*) ;
 int exynos5_i2c_wait_bus_idle (struct exynos5_i2c*) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int exynos5_i2c_xfer_msg(struct exynos5_i2c *i2c,
         struct i2c_msg *msgs, int stop)
{
 unsigned long timeout;
 int ret;

 i2c->msg = msgs;
 i2c->msg_ptr = 0;
 i2c->trans_done = 0;

 reinit_completion(&i2c->msg_complete);

 exynos5_i2c_message_start(i2c, stop);

 timeout = wait_for_completion_timeout(&i2c->msg_complete,
           EXYNOS5_I2C_TIMEOUT);
 if (timeout == 0)
  ret = -ETIMEDOUT;
 else
  ret = i2c->state;





 if (ret == 0 && stop)
  ret = exynos5_i2c_wait_bus_idle(i2c);

 if (ret < 0) {
  exynos5_i2c_reset(i2c);
  if (ret == -ETIMEDOUT)
   dev_warn(i2c->dev, "%s timeout\n",
     (msgs->flags & I2C_M_RD) ? "rx" : "tx");
 }


 return ret;
}
