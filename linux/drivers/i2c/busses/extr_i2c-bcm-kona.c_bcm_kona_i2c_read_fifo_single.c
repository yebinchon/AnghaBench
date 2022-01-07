
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bcm_kona_i2c_dev {scalar_t__ base; int device; int done; } ;


 int EREMOTEIO ;
 int I2C_TIMEOUT ;
 scalar_t__ IER_OFFSET ;
 unsigned int IER_READ_COMPLETE_INT_MASK ;
 unsigned int RXFCR_NACK_EN_SHIFT ;
 scalar_t__ RXFCR_OFFSET ;
 unsigned int RXFCR_READ_COUNT_SHIFT ;
 scalar_t__ RXFIFORDOUT_OFFSET ;
 int dev_err (int ,char*) ;
 unsigned long msecs_to_jiffies (int ) ;
 int readl (scalar_t__) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,unsigned long) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int bcm_kona_i2c_read_fifo_single(struct bcm_kona_i2c_dev *dev,
      uint8_t *buf, unsigned int len,
      unsigned int last_byte_nak)
{
 unsigned long time_left = msecs_to_jiffies(I2C_TIMEOUT);


 reinit_completion(&dev->done);


 writel(IER_READ_COMPLETE_INT_MASK, dev->base + IER_OFFSET);


 writel((last_byte_nak << RXFCR_NACK_EN_SHIFT) |
        (len << RXFCR_READ_COUNT_SHIFT),
  dev->base + RXFCR_OFFSET);


 time_left = wait_for_completion_timeout(&dev->done, time_left);


 writel(0, dev->base + IER_OFFSET);

 if (!time_left) {
  dev_err(dev->device, "RX FIFO time out\n");
  return -EREMOTEIO;
 }


 for (; len > 0; len--, buf++)
  *buf = readl(dev->base + RXFIFORDOUT_OFFSET);

 return 0;
}
