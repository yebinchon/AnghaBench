
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arm_smmu_device {scalar_t__ base; int dev; } ;
typedef int irqreturn_t ;


 scalar_t__ ARM_SMMU_GERROR ;
 scalar_t__ ARM_SMMU_GERRORN ;
 int GERROR_CMDQ_ERR ;
 int GERROR_ERR_MASK ;
 int GERROR_EVTQ_ABT_ERR ;
 int GERROR_MSI_CMDQ_ABT_ERR ;
 int GERROR_MSI_EVTQ_ABT_ERR ;
 int GERROR_MSI_GERROR_ABT_ERR ;
 int GERROR_MSI_PRIQ_ABT_ERR ;
 int GERROR_PRIQ_ABT_ERR ;
 int GERROR_SFM_ERR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int arm_smmu_cmdq_skip_err (struct arm_smmu_device*) ;
 int arm_smmu_device_disable (struct arm_smmu_device*) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,...) ;
 int readl_relaxed (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t arm_smmu_gerror_handler(int irq, void *dev)
{
 u32 gerror, gerrorn, active;
 struct arm_smmu_device *smmu = dev;

 gerror = readl_relaxed(smmu->base + ARM_SMMU_GERROR);
 gerrorn = readl_relaxed(smmu->base + ARM_SMMU_GERRORN);

 active = gerror ^ gerrorn;
 if (!(active & GERROR_ERR_MASK))
  return IRQ_NONE;

 dev_warn(smmu->dev,
   "unexpected global error reported (0x%08x), this could be serious\n",
   active);

 if (active & GERROR_SFM_ERR) {
  dev_err(smmu->dev, "device has entered Service Failure Mode!\n");
  arm_smmu_device_disable(smmu);
 }

 if (active & GERROR_MSI_GERROR_ABT_ERR)
  dev_warn(smmu->dev, "GERROR MSI write aborted\n");

 if (active & GERROR_MSI_PRIQ_ABT_ERR)
  dev_warn(smmu->dev, "PRIQ MSI write aborted\n");

 if (active & GERROR_MSI_EVTQ_ABT_ERR)
  dev_warn(smmu->dev, "EVTQ MSI write aborted\n");

 if (active & GERROR_MSI_CMDQ_ABT_ERR)
  dev_warn(smmu->dev, "CMDQ MSI write aborted\n");

 if (active & GERROR_PRIQ_ABT_ERR)
  dev_err(smmu->dev, "PRIQ write aborted -- events may have been lost\n");

 if (active & GERROR_EVTQ_ABT_ERR)
  dev_err(smmu->dev, "EVTQ write aborted -- events may have been lost\n");

 if (active & GERROR_CMDQ_ERR)
  arm_smmu_cmdq_skip_err(smmu);

 writel(gerror, smmu->base + ARM_SMMU_GERRORN);
 return IRQ_HANDLED;
}
