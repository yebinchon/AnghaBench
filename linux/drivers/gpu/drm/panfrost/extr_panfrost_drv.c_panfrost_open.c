
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int color_adjust; } ;
struct panfrost_file_priv {TYPE_1__ mm; int mm_lock; struct panfrost_device* pfdev; } ;
struct panfrost_device {int dummy; } ;
struct drm_file {struct panfrost_file_priv* driver_priv; } ;
struct drm_device {struct panfrost_device* dev_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 int SZ_32M ;
 int SZ_4G ;
 int drm_mm_init (TYPE_1__*,int,int) ;
 int drm_mm_takedown (TYPE_1__*) ;
 int kfree (struct panfrost_file_priv*) ;
 struct panfrost_file_priv* kzalloc (int,int ) ;
 int panfrost_drm_mm_color_adjust ;
 int panfrost_job_open (struct panfrost_file_priv*) ;
 int panfrost_mmu_pgtable_alloc (struct panfrost_file_priv*) ;
 int panfrost_mmu_pgtable_free (struct panfrost_file_priv*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
panfrost_open(struct drm_device *dev, struct drm_file *file)
{
 int ret;
 struct panfrost_device *pfdev = dev->dev_private;
 struct panfrost_file_priv *panfrost_priv;

 panfrost_priv = kzalloc(sizeof(*panfrost_priv), GFP_KERNEL);
 if (!panfrost_priv)
  return -ENOMEM;

 panfrost_priv->pfdev = pfdev;
 file->driver_priv = panfrost_priv;

 spin_lock_init(&panfrost_priv->mm_lock);


 drm_mm_init(&panfrost_priv->mm, SZ_32M >> PAGE_SHIFT, (SZ_4G - SZ_32M) >> PAGE_SHIFT);
 panfrost_priv->mm.color_adjust = panfrost_drm_mm_color_adjust;

 ret = panfrost_mmu_pgtable_alloc(panfrost_priv);
 if (ret)
  goto err_pgtable;

 ret = panfrost_job_open(panfrost_priv);
 if (ret)
  goto err_job;

 return 0;

err_job:
 panfrost_mmu_pgtable_free(panfrost_priv);
err_pgtable:
 drm_mm_takedown(&panfrost_priv->mm);
 kfree(panfrost_priv);
 return ret;
}
