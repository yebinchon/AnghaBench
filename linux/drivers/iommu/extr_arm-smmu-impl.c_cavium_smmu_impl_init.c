
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smmu_device {int dev; int * impl; } ;
struct cavium_smmu {struct arm_smmu_device smmu; } ;


 int ENOMEM ;
 struct arm_smmu_device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int cavium_impl ;
 int devm_kfree (int ,struct arm_smmu_device*) ;
 struct cavium_smmu* devm_kzalloc (int ,int,int ) ;

__attribute__((used)) static struct arm_smmu_device *cavium_smmu_impl_init(struct arm_smmu_device *smmu)
{
 struct cavium_smmu *cs;

 cs = devm_kzalloc(smmu->dev, sizeof(*cs), GFP_KERNEL);
 if (!cs)
  return ERR_PTR(-ENOMEM);

 cs->smmu = *smmu;
 cs->smmu.impl = &cavium_impl;

 devm_kfree(smmu->dev, smmu);

 return &cs->smmu;
}
