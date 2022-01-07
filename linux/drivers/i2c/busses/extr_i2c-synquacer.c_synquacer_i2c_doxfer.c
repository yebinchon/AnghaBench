
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synquacer_i2c {int msg_num; int msg_idx; int speed_khz; int dev; int timeout_ms; int completion; struct i2c_msg* msg; int state; scalar_t__ msg_ptr; scalar_t__ base; } ;
struct i2c_msg {int dummy; } ;


 int DIV_ROUND_UP (int,int ) ;
 int EAGAIN ;
 int EBUSY ;
 int STATE_START ;
 unsigned char SYNQUACER_I2C_BSR_BB ;
 scalar_t__ SYNQUACER_I2C_REG_BSR ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int ) ;
 unsigned char readb (scalar_t__) ;
 int reinit_completion (int *) ;
 int synquacer_i2c_hw_init (struct synquacer_i2c*) ;
 int synquacer_i2c_master_start (struct synquacer_i2c*,struct i2c_msg*) ;
 int udelay (int ) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int synquacer_i2c_doxfer(struct synquacer_i2c *i2c,
    struct i2c_msg *msgs, int num)
{
 unsigned char bsr;
 unsigned long timeout;
 int ret;

 synquacer_i2c_hw_init(i2c);
 bsr = readb(i2c->base + SYNQUACER_I2C_REG_BSR);
 if (bsr & SYNQUACER_I2C_BSR_BB) {
  dev_err(i2c->dev, "cannot get bus (bus busy)\n");
  return -EBUSY;
 }

 reinit_completion(&i2c->completion);

 i2c->msg = msgs;
 i2c->msg_num = num;
 i2c->msg_ptr = 0;
 i2c->msg_idx = 0;
 i2c->state = STATE_START;

 ret = synquacer_i2c_master_start(i2c, i2c->msg);
 if (ret < 0) {
  dev_dbg(i2c->dev, "Address failed: (%d)\n", ret);
  return ret;
 }

 timeout = wait_for_completion_timeout(&i2c->completion,
     msecs_to_jiffies(i2c->timeout_ms));
 if (timeout == 0) {
  dev_dbg(i2c->dev, "timeout\n");
  return -EAGAIN;
 }

 ret = i2c->msg_idx;
 if (ret != num) {
  dev_dbg(i2c->dev, "incomplete xfer (%d)\n", ret);
  return -EAGAIN;
 }


 udelay(DIV_ROUND_UP(2 * 1000, i2c->speed_khz));

 return ret;
}
