
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_i2c {int msg_num; int msg_idx; int quirks; int state; int dev; int wait; scalar_t__ msg_ptr; struct i2c_msg* msg; } ;
struct i2c_msg {int dummy; } ;


 int EAGAIN ;
 int HZ ;
 int QUIRK_HDMIPHY ;
 int QUIRK_POLL ;
 int STATE_IDLE ;
 int STATE_START ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int s3c24xx_i2c_disable_bus (struct s3c24xx_i2c*) ;
 int s3c24xx_i2c_enable_irq (struct s3c24xx_i2c*) ;
 int s3c24xx_i2c_message_start (struct s3c24xx_i2c*,struct i2c_msg*) ;
 int s3c24xx_i2c_set_master (struct s3c24xx_i2c*) ;
 int s3c24xx_i2c_wait_idle (struct s3c24xx_i2c*) ;
 unsigned long wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int s3c24xx_i2c_doxfer(struct s3c24xx_i2c *i2c,
         struct i2c_msg *msgs, int num)
{
 unsigned long timeout;
 int ret;

 ret = s3c24xx_i2c_set_master(i2c);
 if (ret != 0) {
  dev_err(i2c->dev, "cannot get bus (error %d)\n", ret);
  ret = -EAGAIN;
  goto out;
 }

 i2c->msg = msgs;
 i2c->msg_num = num;
 i2c->msg_ptr = 0;
 i2c->msg_idx = 0;
 i2c->state = STATE_START;

 s3c24xx_i2c_enable_irq(i2c);
 s3c24xx_i2c_message_start(i2c, msgs);

 if (i2c->quirks & QUIRK_POLL) {
  ret = i2c->msg_idx;

  if (ret != num)
   dev_dbg(i2c->dev, "incomplete xfer (%d)\n", ret);

  goto out;
 }

 timeout = wait_event_timeout(i2c->wait, i2c->msg_num == 0, HZ * 5);

 ret = i2c->msg_idx;





 if (timeout == 0)
  dev_dbg(i2c->dev, "timeout\n");
 else if (ret != num)
  dev_dbg(i2c->dev, "incomplete xfer (%d)\n", ret);


 if (i2c->quirks & QUIRK_HDMIPHY)
  goto out;

 s3c24xx_i2c_wait_idle(i2c);

 s3c24xx_i2c_disable_bus(i2c);

 out:
 i2c->state = STATE_IDLE;

 return ret;
}
