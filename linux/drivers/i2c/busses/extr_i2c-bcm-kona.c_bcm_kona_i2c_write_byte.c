
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bcm_kona_i2c_dev {int device; scalar_t__ base; int done; } ;


 int CS_ACK_MASK ;
 scalar_t__ CS_OFFSET ;
 scalar_t__ DAT_OFFSET ;
 int EREMOTEIO ;
 int ETIMEDOUT ;
 int I2C_TIMEOUT ;
 int IER_I2C_INT_EN_MASK ;
 scalar_t__ IER_OFFSET ;
 scalar_t__ ISR_OFFSET ;
 int ISR_SES_DONE_MASK ;
 int bcm_kona_i2c_wait_if_busy (struct bcm_kona_i2c_dev*) ;
 int dev_dbg (int ,char*) ;
 unsigned long msecs_to_jiffies (int ) ;
 int readl (scalar_t__) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int bcm_kona_i2c_write_byte(struct bcm_kona_i2c_dev *dev, uint8_t data,
       unsigned int nak_expected)
{
 int rc;
 unsigned long time_left = msecs_to_jiffies(I2C_TIMEOUT);
 unsigned int nak_received;


 rc = bcm_kona_i2c_wait_if_busy(dev);
 if (rc < 0)
  return rc;


 writel(ISR_SES_DONE_MASK, dev->base + ISR_OFFSET);


 writel(IER_I2C_INT_EN_MASK, dev->base + IER_OFFSET);


 reinit_completion(&dev->done);


 writel(data, dev->base + DAT_OFFSET);


 time_left = wait_for_completion_timeout(&dev->done, time_left);


 writel(0, dev->base + IER_OFFSET);

 if (!time_left) {
  dev_dbg(dev->device, "controller timed out\n");
  return -ETIMEDOUT;
 }

 nak_received = readl(dev->base + CS_OFFSET) & CS_ACK_MASK ? 1 : 0;

 if (nak_received ^ nak_expected) {
  dev_dbg(dev->device, "unexpected NAK/ACK\n");
  return -EREMOTEIO;
 }

 return 0;
}
