
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int phys_addr_t ;



__attribute__((used)) static inline phys_addr_t omap_iommu_translate(u32 d, u32 va, u32 mask)
{
 return (d & mask) | (va & (~mask));
}
