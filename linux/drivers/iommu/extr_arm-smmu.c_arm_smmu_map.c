
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {int dummy; } ;
struct io_pgtable_ops {int (* map ) (struct io_pgtable_ops*,unsigned long,int ,size_t,int) ;} ;
struct arm_smmu_device {int dummy; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {struct arm_smmu_device* smmu; struct io_pgtable_ops* pgtbl_ops; } ;


 int ENODEV ;
 int arm_smmu_rpm_get (struct arm_smmu_device*) ;
 int arm_smmu_rpm_put (struct arm_smmu_device*) ;
 int stub1 (struct io_pgtable_ops*,unsigned long,int ,size_t,int) ;
 TYPE_1__* to_smmu_domain (struct iommu_domain*) ;

__attribute__((used)) static int arm_smmu_map(struct iommu_domain *domain, unsigned long iova,
   phys_addr_t paddr, size_t size, int prot)
{
 struct io_pgtable_ops *ops = to_smmu_domain(domain)->pgtbl_ops;
 struct arm_smmu_device *smmu = to_smmu_domain(domain)->smmu;
 int ret;

 if (!ops)
  return -ENODEV;

 arm_smmu_rpm_get(smmu);
 ret = ops->map(ops, iova, paddr, size, prot);
 arm_smmu_rpm_put(smmu);

 return ret;
}
