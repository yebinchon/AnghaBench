
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_i2c {int count; scalar_t__ base; struct i2c_msg* msg; } ;
struct i2c_msg {int flags; } ;
typedef int irqreturn_t ;


 int I2C_FIFO_FULL_THLD ;
 int I2C_M_RD ;
 int I2C_RX_ACK ;
 scalar_t__ I2C_STATUS ;
 int IRQ_WAKE_THREAD ;
 int readl (scalar_t__) ;
 int sprd_i2c_clear_irq (struct sprd_i2c*) ;
 int sprd_i2c_clear_start (struct sprd_i2c*) ;
 int sprd_i2c_set_fifo_empty_int (struct sprd_i2c*,int ) ;
 int sprd_i2c_set_fifo_full_int (struct sprd_i2c*,int ) ;

__attribute__((used)) static irqreturn_t sprd_i2c_isr(int irq, void *dev_id)
{
 struct sprd_i2c *i2c_dev = dev_id;
 struct i2c_msg *msg = i2c_dev->msg;
 bool ack = !(readl(i2c_dev->base + I2C_STATUS) & I2C_RX_ACK);
 u32 i2c_tran;

 if (msg->flags & I2C_M_RD)
  i2c_tran = i2c_dev->count >= I2C_FIFO_FULL_THLD;
 else
  i2c_tran = i2c_dev->count;
 if (!i2c_tran || !ack) {
  sprd_i2c_clear_start(i2c_dev);
  sprd_i2c_clear_irq(i2c_dev);
 }

 sprd_i2c_set_fifo_empty_int(i2c_dev, 0);
 sprd_i2c_set_fifo_full_int(i2c_dev, 0);

 return IRQ_WAKE_THREAD;
}
