
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm {int mm_lock; int domain; } ;
struct tegra_bo {int mm; int size; int paddr; } ;


 int drm_mm_remove_node (int ) ;
 int iommu_unmap (int ,int ,int ) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int tegra_bo_iommu_unmap(struct tegra_drm *tegra, struct tegra_bo *bo)
{
 if (!bo->mm)
  return 0;

 mutex_lock(&tegra->mm_lock);
 iommu_unmap(tegra->domain, bo->paddr, bo->size);
 drm_mm_remove_node(bo->mm);
 mutex_unlock(&tegra->mm_lock);

 kfree(bo->mm);

 return 0;
}
