
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* afmt; int lock; } ;
struct radeon_device {TYPE_2__ irq; TYPE_1__* ddev; } ;
struct TYPE_3__ {int irq_enabled; } ;


 int radeon_irq_set (struct radeon_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void radeon_irq_kms_enable_afmt(struct radeon_device *rdev, int block)
{
 unsigned long irqflags;

 if (!rdev->ddev->irq_enabled)
  return;

 spin_lock_irqsave(&rdev->irq.lock, irqflags);
 rdev->irq.afmt[block] = 1;
 radeon_irq_set(rdev);
 spin_unlock_irqrestore(&rdev->irq.lock, irqflags);

}
