
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_i2c_dev {scalar_t__ msg_buf_remaining; void** msg_buf; } ;


 int BCM2835_I2C_FIFO ;
 int BCM2835_I2C_S ;
 int BCM2835_I2C_S_RXD ;
 void* bcm2835_i2c_readl (struct bcm2835_i2c_dev*,int ) ;

__attribute__((used)) static void bcm2835_drain_rxfifo(struct bcm2835_i2c_dev *i2c_dev)
{
 u32 val;

 while (i2c_dev->msg_buf_remaining) {
  val = bcm2835_i2c_readl(i2c_dev, BCM2835_I2C_S);
  if (!(val & BCM2835_I2C_S_RXD))
   break;
  *i2c_dev->msg_buf = bcm2835_i2c_readl(i2c_dev,
            BCM2835_I2C_FIFO);
  i2c_dev->msg_buf++;
  i2c_dev->msg_buf_remaining--;
 }
}
