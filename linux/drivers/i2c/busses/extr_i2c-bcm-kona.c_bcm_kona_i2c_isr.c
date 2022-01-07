
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_kona_i2c_dev {int done; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISR_NOACK_MASK ;
 scalar_t__ ISR_OFFSET ;
 int ISR_RESERVED_MASK ;
 int TXFCR_FIFO_EN_MASK ;
 int TXFCR_FIFO_FLUSH_MASK ;
 scalar_t__ TXFCR_OFFSET ;
 int complete (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t bcm_kona_i2c_isr(int irq, void *devid)
{
 struct bcm_kona_i2c_dev *dev = devid;
 uint32_t status = readl(dev->base + ISR_OFFSET);

 if ((status & ~ISR_RESERVED_MASK) == 0)
  return IRQ_NONE;


 if (status & ISR_NOACK_MASK)
  writel(TXFCR_FIFO_FLUSH_MASK | TXFCR_FIFO_EN_MASK,
         dev->base + TXFCR_OFFSET);

 writel(status & ~ISR_RESERVED_MASK, dev->base + ISR_OFFSET);
 complete(&dev->done);

 return IRQ_HANDLED;
}
