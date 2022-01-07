
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct msi_msg {int address_lo; int data; scalar_t__ address_hi; } ;
struct TYPE_2__ {size_t msi_index; } ;
struct msi_desc {TYPE_1__ platform; } ;
struct device {int dummy; } ;
struct arm_smmu_device {int base; } ;
typedef int phys_addr_t ;


 int ARM_SMMU_MEMATTR_DEVICE_nGnRE ;
 int MSI_CFG0_ADDR_MASK ;
 int** arm_smmu_msi_cfg ;
 struct arm_smmu_device* dev_get_drvdata (struct device*) ;
 struct device* msi_desc_to_dev (struct msi_desc*) ;
 int writel_relaxed (int ,int) ;
 int writeq_relaxed (int,int) ;

__attribute__((used)) static void arm_smmu_write_msi_msg(struct msi_desc *desc, struct msi_msg *msg)
{
 phys_addr_t doorbell;
 struct device *dev = msi_desc_to_dev(desc);
 struct arm_smmu_device *smmu = dev_get_drvdata(dev);
 phys_addr_t *cfg = arm_smmu_msi_cfg[desc->platform.msi_index];

 doorbell = (((u64)msg->address_hi) << 32) | msg->address_lo;
 doorbell &= MSI_CFG0_ADDR_MASK;

 writeq_relaxed(doorbell, smmu->base + cfg[0]);
 writel_relaxed(msg->data, smmu->base + cfg[1]);
 writel_relaxed(ARM_SMMU_MEMATTR_DEVICE_nGnRE, smmu->base + cfg[2]);
}
