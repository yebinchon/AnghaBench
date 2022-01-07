
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int MMU_INT_MASK ;
 int MMU_INT_STAT ;
 int mmu_read (struct panfrost_device*,int ) ;
 int mmu_write (struct panfrost_device*,int ,int ) ;

__attribute__((used)) static irqreturn_t panfrost_mmu_irq_handler(int irq, void *data)
{
 struct panfrost_device *pfdev = data;

 if (!mmu_read(pfdev, MMU_INT_STAT))
  return IRQ_NONE;

 mmu_write(pfdev, MMU_INT_MASK, 0);
 return IRQ_WAKE_THREAD;
}
