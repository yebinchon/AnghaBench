
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct a6xx_gmu_bo {int size; struct a6xx_gmu_bo* pages; int iova; } ;
struct a6xx_gmu {int domain; } ;


 scalar_t__ IS_ERR_OR_NULL (struct a6xx_gmu_bo*) ;
 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int __free_pages (struct a6xx_gmu_bo,int ) ;
 int iommu_unmap (int ,int ,scalar_t__) ;
 int kfree (struct a6xx_gmu_bo*) ;

__attribute__((used)) static void a6xx_gmu_memory_free(struct a6xx_gmu *gmu, struct a6xx_gmu_bo *bo)
{
 int count, i;
 u64 iova;

 if (IS_ERR_OR_NULL(bo))
  return;

 count = bo->size >> PAGE_SHIFT;
 iova = bo->iova;

 for (i = 0; i < count; i++, iova += PAGE_SIZE) {
  iommu_unmap(gmu->domain, iova, PAGE_SIZE);
  __free_pages(bo->pages[i], 0);
 }

 kfree(bo->pages);
 kfree(bo);
}
