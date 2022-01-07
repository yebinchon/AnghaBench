
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iommu_iotlb_gather {int dummy; } ;
struct io_pgtable_ops {int dummy; } ;
struct TYPE_3__ {unsigned long long ias; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;
struct arm_lpae_io_pgtable {TYPE_2__ iop; int * pgd; } ;
typedef int arm_lpae_iopte ;


 int ARM_LPAE_START_LVL (struct arm_lpae_io_pgtable*) ;
 scalar_t__ WARN_ON (int) ;
 size_t __arm_lpae_unmap (struct arm_lpae_io_pgtable*,struct iommu_iotlb_gather*,unsigned long,size_t,int,int *) ;
 struct arm_lpae_io_pgtable* io_pgtable_ops_to_data (struct io_pgtable_ops*) ;

__attribute__((used)) static size_t arm_lpae_unmap(struct io_pgtable_ops *ops, unsigned long iova,
        size_t size, struct iommu_iotlb_gather *gather)
{
 struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
 arm_lpae_iopte *ptep = data->pgd;
 int lvl = ARM_LPAE_START_LVL(data);

 if (WARN_ON(iova >= (1ULL << data->iop.cfg.ias)))
  return 0;

 return __arm_lpae_unmap(data, gather, iova, size, lvl, ptep);
}
