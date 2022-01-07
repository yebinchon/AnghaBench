
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_msg {int flags; int len; } ;
struct img_i2c {scalar_t__ mode; int msg_status; int last_msg; int check_timer; int msg_complete; int lock; struct i2c_msg msg; } ;
struct TYPE_2__ {int parent; } ;
struct i2c_adapter {TYPE_1__ dev; } ;


 int EIO ;
 int ETIMEDOUT ;
 int I2C_M_IGNORE_NAK ;
 int I2C_M_RD ;
 int IMG_I2C_TIMEOUT ;
 scalar_t__ MODE_FATAL ;
 scalar_t__ MODE_SUSPEND ;
 int SCB_CLEAR_REG ;
 int SCB_INT_CLEAR_REG ;
 int WARN (int,char*) ;
 int del_timer_sync (int *) ;
 int dev_err (int ,char*) ;
 struct img_i2c* i2c_get_adapdata (struct i2c_adapter*) ;
 int img_i2c_atomic_start (struct img_i2c*) ;
 int img_i2c_read (struct img_i2c*) ;
 int img_i2c_transaction_halt (struct img_i2c*,int) ;
 int img_i2c_write (struct img_i2c*) ;
 int img_i2c_writel (struct img_i2c*,int ,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int reinit_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int img_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
   int num)
{
 struct img_i2c *i2c = i2c_get_adapdata(adap);
 bool atomic = 0;
 int i, ret;
 unsigned long time_left;

 if (i2c->mode == MODE_SUSPEND) {
  WARN(1, "refusing to service transaction in suspended state\n");
  return -EIO;
 }

 if (i2c->mode == MODE_FATAL)
  return -EIO;

 for (i = 0; i < num; i++) {




  if (!msgs[i].len && msgs[i].flags & I2C_M_RD)
   return -EIO;
  if (!msgs[i].len ||
      (msgs[i].flags & I2C_M_IGNORE_NAK))
   atomic = 1;
 }

 ret = pm_runtime_get_sync(adap->dev.parent);
 if (ret < 0)
  return ret;

 for (i = 0; i < num; i++) {
  struct i2c_msg *msg = &msgs[i];
  unsigned long flags;

  spin_lock_irqsave(&i2c->lock, flags);





  i2c->msg = *msg;
  i2c->msg_status = 0;
  i2c->last_msg = (i == num - 1);
  reinit_completion(&i2c->msg_complete);







  img_i2c_writel(i2c, SCB_INT_CLEAR_REG, ~0);
  img_i2c_writel(i2c, SCB_CLEAR_REG, ~0);

  if (atomic) {
   img_i2c_atomic_start(i2c);
  } else {




   img_i2c_transaction_halt(i2c, !i2c->last_msg);

   if (msg->flags & I2C_M_RD)
    img_i2c_read(i2c);
   else
    img_i2c_write(i2c);
   img_i2c_transaction_halt(i2c, 0);
   img_i2c_transaction_halt(i2c, !i2c->last_msg);
  }
  spin_unlock_irqrestore(&i2c->lock, flags);

  time_left = wait_for_completion_timeout(&i2c->msg_complete,
            IMG_I2C_TIMEOUT);
  del_timer_sync(&i2c->check_timer);

  if (time_left == 0) {
   dev_err(adap->dev.parent, "i2c transfer timed out\n");
   i2c->msg_status = -ETIMEDOUT;
   break;
  }

  if (i2c->msg_status)
   break;
 }

 pm_runtime_mark_last_busy(adap->dev.parent);
 pm_runtime_put_autosuspend(adap->dev.parent);

 return i2c->msg_status ? i2c->msg_status : num;
}
