
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_iotlb_gather {int dummy; } ;
struct io_pgtable_ops {int dummy; } ;
struct arm_v7s_io_pgtable {int pgd; } ;


 scalar_t__ WARN_ON (int ) ;
 size_t __arm_v7s_unmap (struct arm_v7s_io_pgtable*,struct iommu_iotlb_gather*,unsigned long,size_t,int,int ) ;
 struct arm_v7s_io_pgtable* io_pgtable_ops_to_data (struct io_pgtable_ops*) ;
 int upper_32_bits (unsigned long) ;

__attribute__((used)) static size_t arm_v7s_unmap(struct io_pgtable_ops *ops, unsigned long iova,
       size_t size, struct iommu_iotlb_gather *gather)
{
 struct arm_v7s_io_pgtable *data = io_pgtable_ops_to_data(ops);

 if (WARN_ON(upper_32_bits(iova)))
  return 0;

 return __arm_v7s_unmap(data, gather, iova, size, 1, data->pgd);
}
