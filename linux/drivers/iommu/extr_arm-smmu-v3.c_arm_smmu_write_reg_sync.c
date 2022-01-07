
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct arm_smmu_device {scalar_t__ base; } ;


 int ARM_SMMU_POLL_TIMEOUT_US ;
 int readl_relaxed_poll_timeout (scalar_t__,scalar_t__,int,int,int ) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static int arm_smmu_write_reg_sync(struct arm_smmu_device *smmu, u32 val,
       unsigned int reg_off, unsigned int ack_off)
{
 u32 reg;

 writel_relaxed(val, smmu->base + reg_off);
 return readl_relaxed_poll_timeout(smmu->base + ack_off, reg, reg == val,
       1, ARM_SMMU_POLL_TIMEOUT_US);
}
