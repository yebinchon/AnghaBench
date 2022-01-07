
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arm_smmu_device {int combined_irq; int features; int dev; } ;


 int ARM_SMMU_FEAT_PRI ;
 int ARM_SMMU_IRQ_CTRL ;
 int ARM_SMMU_IRQ_CTRLACK ;
 int IRQF_ONESHOT ;
 int IRQ_CTRL_EVTQ_IRQEN ;
 int IRQ_CTRL_GERROR_IRQEN ;
 int IRQ_CTRL_PRIQ_IRQEN ;
 int arm_smmu_combined_irq_handler ;
 int arm_smmu_combined_irq_thread ;
 int arm_smmu_setup_unique_irqs (struct arm_smmu_device*) ;
 int arm_smmu_write_reg_sync (struct arm_smmu_device*,int,int ,int ) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int devm_request_threaded_irq (int ,int,int ,int ,int ,char*,struct arm_smmu_device*) ;

__attribute__((used)) static int arm_smmu_setup_irqs(struct arm_smmu_device *smmu)
{
 int ret, irq;
 u32 irqen_flags = IRQ_CTRL_EVTQ_IRQEN | IRQ_CTRL_GERROR_IRQEN;


 ret = arm_smmu_write_reg_sync(smmu, 0, ARM_SMMU_IRQ_CTRL,
          ARM_SMMU_IRQ_CTRLACK);
 if (ret) {
  dev_err(smmu->dev, "failed to disable irqs\n");
  return ret;
 }

 irq = smmu->combined_irq;
 if (irq) {




  ret = devm_request_threaded_irq(smmu->dev, irq,
     arm_smmu_combined_irq_handler,
     arm_smmu_combined_irq_thread,
     IRQF_ONESHOT,
     "arm-smmu-v3-combined-irq", smmu);
  if (ret < 0)
   dev_warn(smmu->dev, "failed to enable combined irq\n");
 } else
  arm_smmu_setup_unique_irqs(smmu);

 if (smmu->features & ARM_SMMU_FEAT_PRI)
  irqen_flags |= IRQ_CTRL_PRIQ_IRQEN;


 ret = arm_smmu_write_reg_sync(smmu, irqen_flags,
          ARM_SMMU_IRQ_CTRL, ARM_SMMU_IRQ_CTRLACK);
 if (ret)
  dev_warn(smmu->dev, "failed to enable irqs\n");

 return 0;
}
