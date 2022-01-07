
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bcm_kona_i2c_dev {int device; scalar_t__ base; int done; int irq; } ;


 int CS_ACK_MASK ;
 scalar_t__ CS_OFFSET ;
 scalar_t__ DAT_OFFSET ;
 int EREMOTEIO ;
 scalar_t__ FIFO_STATUS_OFFSET ;
 unsigned int FIFO_STATUS_TXFIFO_EMPTY_MASK ;
 int I2C_TIMEOUT ;
 int IER_FIFO_INT_EN_MASK ;
 int IER_NOACK_EN_MASK ;
 scalar_t__ IER_OFFSET ;
 int dev_err (int ,char*) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 unsigned long msecs_to_jiffies (int ) ;
 int readl (scalar_t__) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int bcm_kona_i2c_write_fifo_single(struct bcm_kona_i2c_dev *dev,
       uint8_t *buf, unsigned int len)
{
 int k;
 unsigned long time_left = msecs_to_jiffies(I2C_TIMEOUT);
 unsigned int fifo_status;


 reinit_completion(&dev->done);


 writel(IER_FIFO_INT_EN_MASK | IER_NOACK_EN_MASK,
        dev->base + IER_OFFSET);


 disable_irq(dev->irq);


 for (k = 0; k < len; k++)
  writel(buf[k], (dev->base + DAT_OFFSET));


 enable_irq(dev->irq);


 do {
  time_left = wait_for_completion_timeout(&dev->done, time_left);
  fifo_status = readl(dev->base + FIFO_STATUS_OFFSET);
 } while (time_left && !(fifo_status & FIFO_STATUS_TXFIFO_EMPTY_MASK));


 writel(0, dev->base + IER_OFFSET);


 if (readl(dev->base + CS_OFFSET) & CS_ACK_MASK) {
  dev_err(dev->device, "unexpected NAK\n");
  return -EREMOTEIO;
 }


 if (!time_left) {
  dev_err(dev->device, "completion timed out\n");
  return -EREMOTEIO;
 }

 return 0;
}
