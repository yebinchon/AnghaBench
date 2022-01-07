
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_i2c {int msg_complete; int lock; } ;


 int ETIMEDOUT ;
 int IMG_I2C_TIMEOUT ;
 int img_i2c_reset_start (struct img_i2c*) ;
 int reinit_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int img_i2c_reset_bus(struct img_i2c *i2c)
{
 unsigned long flags;
 unsigned long time_left;

 spin_lock_irqsave(&i2c->lock, flags);
 reinit_completion(&i2c->msg_complete);
 img_i2c_reset_start(i2c);
 spin_unlock_irqrestore(&i2c->lock, flags);

 time_left = wait_for_completion_timeout(&i2c->msg_complete,
           IMG_I2C_TIMEOUT);
 if (time_left == 0)
  return -ETIMEDOUT;
 return 0;
}
