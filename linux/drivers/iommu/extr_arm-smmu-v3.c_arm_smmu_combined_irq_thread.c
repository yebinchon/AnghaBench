
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smmu_device {int features; } ;
typedef int irqreturn_t ;


 int ARM_SMMU_FEAT_PRI ;
 int IRQ_HANDLED ;
 int arm_smmu_evtq_thread (int,void*) ;
 int arm_smmu_priq_thread (int,void*) ;

__attribute__((used)) static irqreturn_t arm_smmu_combined_irq_thread(int irq, void *dev)
{
 struct arm_smmu_device *smmu = dev;

 arm_smmu_evtq_thread(irq, dev);
 if (smmu->features & ARM_SMMU_FEAT_PRI)
  arm_smmu_priq_thread(irq, dev);

 return IRQ_HANDLED;
}
