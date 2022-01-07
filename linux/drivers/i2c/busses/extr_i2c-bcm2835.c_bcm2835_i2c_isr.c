
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bcm2835_i2c_dev {int msg_err; int completion; scalar_t__ msg_buf_remaining; TYPE_1__* curr_msg; scalar_t__ num_msgs; int dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int flags; } ;


 int BCM2835_I2C_C ;
 int BCM2835_I2C_C_CLEAR ;
 int BCM2835_I2C_S ;
 int BCM2835_I2C_S_CLKT ;
 int BCM2835_I2C_S_DONE ;
 int BCM2835_I2C_S_ERR ;
 int BCM2835_I2C_S_LEN ;
 int BCM2835_I2C_S_RXD ;
 int BCM2835_I2C_S_RXR ;
 int BCM2835_I2C_S_TXW ;
 int I2C_M_RD ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int bcm2835_drain_rxfifo (struct bcm2835_i2c_dev*) ;
 int bcm2835_fill_txfifo (struct bcm2835_i2c_dev*) ;
 int bcm2835_i2c_readl (struct bcm2835_i2c_dev*,int ) ;
 int bcm2835_i2c_start_transfer (struct bcm2835_i2c_dev*) ;
 int bcm2835_i2c_writel (struct bcm2835_i2c_dev*,int ,int) ;
 int complete (int *) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static irqreturn_t bcm2835_i2c_isr(int this_irq, void *data)
{
 struct bcm2835_i2c_dev *i2c_dev = data;
 u32 val, err;

 val = bcm2835_i2c_readl(i2c_dev, BCM2835_I2C_S);

 err = val & (BCM2835_I2C_S_CLKT | BCM2835_I2C_S_ERR);
 if (err) {
  i2c_dev->msg_err = err;
  goto complete;
 }

 if (val & BCM2835_I2C_S_DONE) {
  if (!i2c_dev->curr_msg) {
   dev_err(i2c_dev->dev, "Got unexpected interrupt (from firmware?)\n");
  } else if (i2c_dev->curr_msg->flags & I2C_M_RD) {
   bcm2835_drain_rxfifo(i2c_dev);
   val = bcm2835_i2c_readl(i2c_dev, BCM2835_I2C_S);
  }

  if ((val & BCM2835_I2C_S_RXD) || i2c_dev->msg_buf_remaining)
   i2c_dev->msg_err = BCM2835_I2C_S_LEN;
  else
   i2c_dev->msg_err = 0;
  goto complete;
 }

 if (val & BCM2835_I2C_S_TXW) {
  if (!i2c_dev->msg_buf_remaining) {
   i2c_dev->msg_err = val | BCM2835_I2C_S_LEN;
   goto complete;
  }

  bcm2835_fill_txfifo(i2c_dev);

  if (i2c_dev->num_msgs && !i2c_dev->msg_buf_remaining) {
   i2c_dev->curr_msg++;
   bcm2835_i2c_start_transfer(i2c_dev);
  }

  return IRQ_HANDLED;
 }

 if (val & BCM2835_I2C_S_RXR) {
  if (!i2c_dev->msg_buf_remaining) {
   i2c_dev->msg_err = val | BCM2835_I2C_S_LEN;
   goto complete;
  }

  bcm2835_drain_rxfifo(i2c_dev);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;

complete:
 bcm2835_i2c_writel(i2c_dev, BCM2835_I2C_C, BCM2835_I2C_C_CLEAR);
 bcm2835_i2c_writel(i2c_dev, BCM2835_I2C_S, BCM2835_I2C_S_CLKT |
      BCM2835_I2C_S_ERR | BCM2835_I2C_S_DONE);
 complete(&i2c_dev->completion);

 return IRQ_HANDLED;
}
