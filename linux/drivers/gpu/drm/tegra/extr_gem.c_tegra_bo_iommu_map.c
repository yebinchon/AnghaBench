
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tegra_drm {int mm_lock; TYPE_3__* drm; int domain; int mm; } ;
struct TYPE_8__ {int size; } ;
struct tegra_bo {TYPE_4__* mm; int size; TYPE_2__* sgt; int paddr; TYPE_1__ gem; } ;
struct TYPE_11__ {int start; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {int nents; int sgl; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IOMMU_READ ;
 int IOMMU_WRITE ;
 int PAGE_SIZE ;
 int dev_err (int ,char*,...) ;
 int drm_mm_insert_node_generic (int *,TYPE_4__*,int ,int ,int ,int ) ;
 int drm_mm_remove_node (TYPE_4__*) ;
 int iommu_map_sg (int ,int ,int ,int ,int) ;
 int kfree (TYPE_4__*) ;
 TYPE_4__* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int tegra_bo_iommu_map(struct tegra_drm *tegra, struct tegra_bo *bo)
{
 int prot = IOMMU_READ | IOMMU_WRITE;
 int err;

 if (bo->mm)
  return -EBUSY;

 bo->mm = kzalloc(sizeof(*bo->mm), GFP_KERNEL);
 if (!bo->mm)
  return -ENOMEM;

 mutex_lock(&tegra->mm_lock);

 err = drm_mm_insert_node_generic(&tegra->mm,
      bo->mm, bo->gem.size, PAGE_SIZE, 0, 0);
 if (err < 0) {
  dev_err(tegra->drm->dev, "out of I/O virtual memory: %d\n",
   err);
  goto unlock;
 }

 bo->paddr = bo->mm->start;

 bo->size = iommu_map_sg(tegra->domain, bo->paddr, bo->sgt->sgl,
    bo->sgt->nents, prot);
 if (!bo->size) {
  dev_err(tegra->drm->dev, "failed to map buffer\n");
  err = -ENOMEM;
  goto remove;
 }

 mutex_unlock(&tegra->mm_lock);

 return 0;

remove:
 drm_mm_remove_node(bo->mm);
unlock:
 mutex_unlock(&tegra->mm_lock);
 kfree(bo->mm);
 return err;
}
