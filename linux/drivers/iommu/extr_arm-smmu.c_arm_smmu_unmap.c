
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct io_pgtable_ops {size_t (* unmap ) (struct io_pgtable_ops*,unsigned long,size_t,struct iommu_iotlb_gather*) ;} ;
struct arm_smmu_device {int dummy; } ;
struct TYPE_2__ {struct arm_smmu_device* smmu; struct io_pgtable_ops* pgtbl_ops; } ;


 int arm_smmu_rpm_get (struct arm_smmu_device*) ;
 int arm_smmu_rpm_put (struct arm_smmu_device*) ;
 size_t stub1 (struct io_pgtable_ops*,unsigned long,size_t,struct iommu_iotlb_gather*) ;
 TYPE_1__* to_smmu_domain (struct iommu_domain*) ;

__attribute__((used)) static size_t arm_smmu_unmap(struct iommu_domain *domain, unsigned long iova,
        size_t size, struct iommu_iotlb_gather *gather)
{
 struct io_pgtable_ops *ops = to_smmu_domain(domain)->pgtbl_ops;
 struct arm_smmu_device *smmu = to_smmu_domain(domain)->smmu;
 size_t ret;

 if (!ops)
  return 0;

 arm_smmu_rpm_get(smmu);
 ret = ops->unmap(ops, iova, size, gather);
 arm_smmu_rpm_put(smmu);

 return ret;
}
