
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_msg {int len; int flags; int addr; int buf; } ;
struct bcm2835_i2c_dev {int num_msgs; int msg_buf_remaining; int msg_buf; struct i2c_msg* curr_msg; } ;


 int BCM2835_I2C_A ;
 int BCM2835_I2C_C ;
 int BCM2835_I2C_C_I2CEN ;
 int BCM2835_I2C_C_INTD ;
 int BCM2835_I2C_C_INTR ;
 int BCM2835_I2C_C_INTT ;
 int BCM2835_I2C_C_READ ;
 int BCM2835_I2C_C_ST ;
 int BCM2835_I2C_DLEN ;
 int I2C_M_RD ;
 int bcm2835_i2c_writel (struct bcm2835_i2c_dev*,int ,int) ;

__attribute__((used)) static void bcm2835_i2c_start_transfer(struct bcm2835_i2c_dev *i2c_dev)
{
 u32 c = BCM2835_I2C_C_ST | BCM2835_I2C_C_I2CEN;
 struct i2c_msg *msg = i2c_dev->curr_msg;
 bool last_msg = (i2c_dev->num_msgs == 1);

 if (!i2c_dev->num_msgs)
  return;

 i2c_dev->num_msgs--;
 i2c_dev->msg_buf = msg->buf;
 i2c_dev->msg_buf_remaining = msg->len;

 if (msg->flags & I2C_M_RD)
  c |= BCM2835_I2C_C_READ | BCM2835_I2C_C_INTR;
 else
  c |= BCM2835_I2C_C_INTT;

 if (last_msg)
  c |= BCM2835_I2C_C_INTD;

 bcm2835_i2c_writel(i2c_dev, BCM2835_I2C_A, msg->addr);
 bcm2835_i2c_writel(i2c_dev, BCM2835_I2C_DLEN, msg->len);
 bcm2835_i2c_writel(i2c_dev, BCM2835_I2C_C, c);
}
