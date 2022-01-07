
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rk_crypto_info {int lock; int done_task; int err; int dev; } ;
typedef int irqreturn_t ;


 int CRYPTO_READ (struct rk_crypto_info*,int ) ;
 int CRYPTO_WRITE (struct rk_crypto_info*,int ,int) ;
 int EFAULT ;
 int IRQ_HANDLED ;
 int RK_CRYPTO_INTSTS ;
 int dev_warn (int ,char*) ;
 struct rk_crypto_info* platform_get_drvdata (void*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t rk_crypto_irq_handle(int irq, void *dev_id)
{
 struct rk_crypto_info *dev = platform_get_drvdata(dev_id);
 u32 interrupt_status;

 spin_lock(&dev->lock);
 interrupt_status = CRYPTO_READ(dev, RK_CRYPTO_INTSTS);
 CRYPTO_WRITE(dev, RK_CRYPTO_INTSTS, interrupt_status);

 if (interrupt_status & 0x0a) {
  dev_warn(dev->dev, "DMA Error\n");
  dev->err = -EFAULT;
 }
 tasklet_schedule(&dev->done_task);

 spin_unlock(&dev->lock);
 return IRQ_HANDLED;
}
