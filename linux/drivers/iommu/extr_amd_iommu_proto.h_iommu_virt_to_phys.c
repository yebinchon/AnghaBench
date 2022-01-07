
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int __sme_set (int ) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static inline u64 iommu_virt_to_phys(void *vaddr)
{
 return (u64)__sme_set(virt_to_phys(vaddr));
}
