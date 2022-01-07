
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_iommuv1_context {int * pgtable_cpu; } ;
struct etnaviv_iommu_context {int dummy; } ;
typedef int phys_addr_t ;


 int EINVAL ;
 unsigned long GPU_MEM_START ;
 unsigned long SZ_4K ;
 struct etnaviv_iommuv1_context* to_v1_context (struct etnaviv_iommu_context*) ;

__attribute__((used)) static int etnaviv_iommuv1_map(struct etnaviv_iommu_context *context,
          unsigned long iova, phys_addr_t paddr,
          size_t size, int prot)
{
 struct etnaviv_iommuv1_context *v1_context = to_v1_context(context);
 unsigned int index = (iova - GPU_MEM_START) / SZ_4K;

 if (size != SZ_4K)
  return -EINVAL;

 v1_context->pgtable_cpu[index] = paddr;

 return 0;
}
