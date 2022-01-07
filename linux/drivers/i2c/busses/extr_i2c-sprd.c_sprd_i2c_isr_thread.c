
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_i2c {int count; int complete; int buf; int err; scalar_t__ base; struct i2c_msg* msg; } ;
struct i2c_msg {int flags; } ;
typedef int irqreturn_t ;


 int EIO ;
 int I2C_FIFO_FULL_THLD ;
 int I2C_M_RD ;
 int I2C_RX_ACK ;
 scalar_t__ I2C_STATUS ;
 int IRQ_HANDLED ;
 int complete (int *) ;
 int readl (scalar_t__) ;
 int sprd_i2c_clear_ack (struct sprd_i2c*) ;
 int sprd_i2c_clear_start (struct sprd_i2c*) ;
 int sprd_i2c_data_transfer (struct sprd_i2c*) ;
 int sprd_i2c_read_bytes (struct sprd_i2c*,int ,int) ;

__attribute__((used)) static irqreturn_t sprd_i2c_isr_thread(int irq, void *dev_id)
{
 struct sprd_i2c *i2c_dev = dev_id;
 struct i2c_msg *msg = i2c_dev->msg;
 bool ack = !(readl(i2c_dev->base + I2C_STATUS) & I2C_RX_ACK);
 u32 i2c_tran;

 if (msg->flags & I2C_M_RD)
  i2c_tran = i2c_dev->count >= I2C_FIFO_FULL_THLD;
 else
  i2c_tran = i2c_dev->count;
 if (i2c_tran && ack) {
  sprd_i2c_data_transfer(i2c_dev);
  return IRQ_HANDLED;
 }

 i2c_dev->err = 0;





 if (!ack)
  i2c_dev->err = -EIO;
 else if (msg->flags & I2C_M_RD && i2c_dev->count)
  sprd_i2c_read_bytes(i2c_dev, i2c_dev->buf, i2c_dev->count);


 sprd_i2c_clear_ack(i2c_dev);
 sprd_i2c_clear_start(i2c_dev);
 complete(&i2c_dev->complete);

 return IRQ_HANDLED;
}
