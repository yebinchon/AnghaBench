
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct crypto4xx_device {scalar_t__ sdr_tail; scalar_t__ sdr_head; TYPE_1__* core_dev; } ;
struct TYPE_2__ {int lock; } ;


 scalar_t__ PPC4XX_LAST_SD ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 crypto4xx_put_sd_to_sdr(struct crypto4xx_device *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->core_dev->lock, flags);
 if (dev->sdr_tail == dev->sdr_head) {
  spin_unlock_irqrestore(&dev->core_dev->lock, flags);
  return 0;
 }
 if (dev->sdr_tail != PPC4XX_LAST_SD)
  dev->sdr_tail++;
 else
  dev->sdr_tail = 0;
 spin_unlock_irqrestore(&dev->core_dev->lock, flags);

 return 0;
}
