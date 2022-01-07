
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_i2c {int last; int error; int lock; int state; int done; scalar_t__ count; scalar_t__ pos; struct i2c_msg* msg; } ;
struct i2c_msg {long flags; } ;


 int ETIMEDOUT ;
 long I2C_M_IGNORE_NAK ;
 int I2C_M_NOSTART ;
 long I2C_M_RD ;
 int I2C_TIMEOUT_MS ;
 int REG_CTRL ;
 unsigned long REG_CTRL_ACK_IGNORE ;
 unsigned long REG_CTRL_START ;
 int STATE_IDLE ;
 int STATE_READ ;
 int STATE_WRITE ;
 int meson_i2c_do_start (struct meson_i2c*,struct i2c_msg*) ;
 int meson_i2c_prepare_xfer (struct meson_i2c*) ;
 int meson_i2c_reset_tokens (struct meson_i2c*) ;
 int meson_i2c_set_mask (struct meson_i2c*,int ,unsigned long,unsigned long) ;
 unsigned long msecs_to_jiffies (int ) ;
 int reinit_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int meson_i2c_xfer_msg(struct meson_i2c *i2c, struct i2c_msg *msg,
         int last)
{
 unsigned long time_left, flags;
 int ret = 0;

 i2c->msg = msg;
 i2c->last = last;
 i2c->pos = 0;
 i2c->count = 0;
 i2c->error = 0;

 meson_i2c_reset_tokens(i2c);

 flags = (msg->flags & I2C_M_IGNORE_NAK) ? REG_CTRL_ACK_IGNORE : 0;
 meson_i2c_set_mask(i2c, REG_CTRL, REG_CTRL_ACK_IGNORE, flags);

 if (!(msg->flags & I2C_M_NOSTART))
  meson_i2c_do_start(i2c, msg);

 i2c->state = (msg->flags & I2C_M_RD) ? STATE_READ : STATE_WRITE;
 meson_i2c_prepare_xfer(i2c);
 reinit_completion(&i2c->done);


 meson_i2c_set_mask(i2c, REG_CTRL, REG_CTRL_START, REG_CTRL_START);

 time_left = msecs_to_jiffies(I2C_TIMEOUT_MS);
 time_left = wait_for_completion_timeout(&i2c->done, time_left);






 spin_lock_irqsave(&i2c->lock, flags);


 meson_i2c_set_mask(i2c, REG_CTRL, REG_CTRL_START, 0);

 if (!time_left) {
  i2c->state = STATE_IDLE;
  ret = -ETIMEDOUT;
 }

 if (i2c->error)
  ret = i2c->error;

 spin_unlock_irqrestore(&i2c->lock, flags);

 return ret;
}
