
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_msg {int addr; int len; int* buf; int flags; } ;
struct i2c_device {int addr; int* i2c_write_buffer; int i2c_buffer_lock; int adap; } ;


 int EINVAL ;
 int EREMOTEIO ;
 int dprintk (char*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 scalar_t__ mutex_lock_interruptible (int ) ;
 int mutex_unlock (int ) ;

__attribute__((used)) static int dib8000_i2c_write16(struct i2c_device *i2c, u16 reg, u16 val)
{
 struct i2c_msg msg = {.addr = i2c->addr >> 1, .flags = 0, .len = 4};
 int ret = 0;

 if (mutex_lock_interruptible(i2c->i2c_buffer_lock) < 0) {
  dprintk("could not acquire lock\n");
  return -EINVAL;
 }

 msg.buf = i2c->i2c_write_buffer;
 msg.buf[0] = (reg >> 8) & 0xff;
 msg.buf[1] = reg & 0xff;
 msg.buf[2] = (val >> 8) & 0xff;
 msg.buf[3] = val & 0xff;

 ret = i2c_transfer(i2c->adap, &msg, 1) != 1 ? -EREMOTEIO : 0;
 mutex_unlock(i2c->i2c_buffer_lock);

 return ret;
}
