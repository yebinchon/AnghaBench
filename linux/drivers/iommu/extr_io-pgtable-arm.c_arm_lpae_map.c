
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct io_pgtable_ops {int dummy; } ;
struct TYPE_3__ {unsigned long long ias; unsigned long long oas; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;
struct arm_lpae_io_pgtable {TYPE_2__ iop; int * pgd; } ;
typedef unsigned long long phys_addr_t ;
typedef int arm_lpae_iopte ;


 int ARM_LPAE_START_LVL (struct arm_lpae_io_pgtable*) ;
 int ERANGE ;
 int IOMMU_READ ;
 int IOMMU_WRITE ;
 scalar_t__ WARN_ON (int) ;
 int __arm_lpae_map (struct arm_lpae_io_pgtable*,unsigned long,unsigned long long,size_t,int ,int,int *) ;
 int arm_lpae_prot_to_pte (struct arm_lpae_io_pgtable*,int) ;
 struct arm_lpae_io_pgtable* io_pgtable_ops_to_data (struct io_pgtable_ops*) ;
 int wmb () ;

__attribute__((used)) static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
   phys_addr_t paddr, size_t size, int iommu_prot)
{
 struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
 arm_lpae_iopte *ptep = data->pgd;
 int ret, lvl = ARM_LPAE_START_LVL(data);
 arm_lpae_iopte prot;


 if (!(iommu_prot & (IOMMU_READ | IOMMU_WRITE)))
  return 0;

 if (WARN_ON(iova >= (1ULL << data->iop.cfg.ias) ||
      paddr >= (1ULL << data->iop.cfg.oas)))
  return -ERANGE;

 prot = arm_lpae_prot_to_pte(data, iommu_prot);
 ret = __arm_lpae_map(data, iova, paddr, size, prot, lvl, ptep);




 wmb();

 return ret;
}
