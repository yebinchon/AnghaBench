
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct arm_smmu_master {int dev; int ats_enabled; struct arm_smmu_domain* domain; struct arm_smmu_device* smmu; } ;
struct arm_smmu_domain {int nr_ats_masters; } ;
struct arm_smmu_device {int pgsize_bitmap; } ;


 size_t __ffs (int ) ;
 int arm_smmu_atc_inv_domain (struct arm_smmu_domain*,int ,int ,int ) ;
 int atomic_inc (int *) ;
 int dev_err (int ,char*,size_t) ;
 scalar_t__ pci_enable_ats (struct pci_dev*,size_t) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void arm_smmu_enable_ats(struct arm_smmu_master *master)
{
 size_t stu;
 struct pci_dev *pdev;
 struct arm_smmu_device *smmu = master->smmu;
 struct arm_smmu_domain *smmu_domain = master->domain;


 if (!master->ats_enabled)
  return;


 stu = __ffs(smmu->pgsize_bitmap);
 pdev = to_pci_dev(master->dev);

 atomic_inc(&smmu_domain->nr_ats_masters);
 arm_smmu_atc_inv_domain(smmu_domain, 0, 0, 0);
 if (pci_enable_ats(pdev, stu))
  dev_err(master->dev, "Failed to enable ATS (STU %zu)\n", stu);
}
