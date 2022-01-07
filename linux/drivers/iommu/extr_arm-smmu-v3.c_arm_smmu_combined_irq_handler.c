
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int arm_smmu_gerror_handler (int,void*) ;

__attribute__((used)) static irqreturn_t arm_smmu_combined_irq_handler(int irq, void *dev)
{
 arm_smmu_gerror_handler(irq, dev);
 return IRQ_WAKE_THREAD;
}
