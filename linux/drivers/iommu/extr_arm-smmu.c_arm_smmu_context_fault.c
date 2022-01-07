
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iommu_domain {int dummy; } ;
struct TYPE_2__ {int cbndx; } ;
struct arm_smmu_domain {TYPE_1__ cfg; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int dev; } ;
typedef int irqreturn_t ;


 int ARM_SMMU_CB_FAR ;
 int ARM_SMMU_CB_FSR ;
 int ARM_SMMU_CB_FSYNR0 ;
 int ARM_SMMU_GR1_CBFRSYNRA (int) ;
 int FSR_FAULT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int arm_smmu_cb_read (struct arm_smmu_device*,int,int ) ;
 unsigned long arm_smmu_cb_readq (struct arm_smmu_device*,int,int ) ;
 int arm_smmu_cb_write (struct arm_smmu_device*,int,int ,int) ;
 int arm_smmu_gr1_read (struct arm_smmu_device*,int ) ;
 int dev_err_ratelimited (int ,char*,int,unsigned long,int,int,int) ;
 struct arm_smmu_domain* to_smmu_domain (struct iommu_domain*) ;

__attribute__((used)) static irqreturn_t arm_smmu_context_fault(int irq, void *dev)
{
 u32 fsr, fsynr, cbfrsynra;
 unsigned long iova;
 struct iommu_domain *domain = dev;
 struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
 struct arm_smmu_device *smmu = smmu_domain->smmu;
 int idx = smmu_domain->cfg.cbndx;

 fsr = arm_smmu_cb_read(smmu, idx, ARM_SMMU_CB_FSR);
 if (!(fsr & FSR_FAULT))
  return IRQ_NONE;

 fsynr = arm_smmu_cb_read(smmu, idx, ARM_SMMU_CB_FSYNR0);
 iova = arm_smmu_cb_readq(smmu, idx, ARM_SMMU_CB_FAR);
 cbfrsynra = arm_smmu_gr1_read(smmu, ARM_SMMU_GR1_CBFRSYNRA(idx));

 dev_err_ratelimited(smmu->dev,
 "Unhandled context fault: fsr=0x%x, iova=0x%08lx, fsynr=0x%x, cbfrsynra=0x%x, cb=%d\n",
       fsr, iova, fsynr, cbfrsynra, idx);

 arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_FSR, fsr);
 return IRQ_HANDLED;
}
