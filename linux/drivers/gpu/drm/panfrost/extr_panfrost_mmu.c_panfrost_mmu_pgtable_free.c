
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_mmu {scalar_t__ as; int pgtbl_ops; int list; } ;
struct panfrost_file_priv {struct panfrost_mmu mmu; struct panfrost_device* pfdev; } ;
struct panfrost_device {int as_lock; int as_in_use_mask; int as_alloc_mask; int dev; } ;


 int clear_bit (scalar_t__,int *) ;
 int free_io_pgtable_ops (int ) ;
 int list_del (int *) ;
 int panfrost_mmu_disable (struct panfrost_device*,scalar_t__) ;
 scalar_t__ pm_runtime_active (int ) ;
 int pm_runtime_get_noresume (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void panfrost_mmu_pgtable_free(struct panfrost_file_priv *priv)
{
 struct panfrost_device *pfdev = priv->pfdev;
 struct panfrost_mmu *mmu = &priv->mmu;

 spin_lock(&pfdev->as_lock);
 if (mmu->as >= 0) {
  pm_runtime_get_noresume(pfdev->dev);
  if (pm_runtime_active(pfdev->dev))
   panfrost_mmu_disable(pfdev, mmu->as);
  pm_runtime_put_autosuspend(pfdev->dev);

  clear_bit(mmu->as, &pfdev->as_alloc_mask);
  clear_bit(mmu->as, &pfdev->as_in_use_mask);
  list_del(&mmu->list);
 }
 spin_unlock(&pfdev->as_lock);

 free_io_pgtable_ops(mmu->pgtbl_ops);
}
