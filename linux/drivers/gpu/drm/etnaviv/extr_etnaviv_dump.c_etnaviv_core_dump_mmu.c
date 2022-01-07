
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_iommu_context {int dummy; } ;
struct core_dump_iterator {scalar_t__ data; } ;


 int ETDUMP_BUF_MMU ;
 int etnaviv_core_dump_header (struct core_dump_iterator*,int ,scalar_t__) ;
 int etnaviv_iommu_dump (struct etnaviv_iommu_context*,scalar_t__) ;

__attribute__((used)) static void etnaviv_core_dump_mmu(struct core_dump_iterator *iter,
 struct etnaviv_iommu_context *mmu, size_t mmu_size)
{
 etnaviv_iommu_dump(mmu, iter->data);

 etnaviv_core_dump_header(iter, ETDUMP_BUF_MMU, iter->data + mmu_size);
}
