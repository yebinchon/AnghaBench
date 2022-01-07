
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_file_priv {int mm; } ;
struct drm_file {struct panfrost_file_priv* driver_priv; } ;
struct drm_device {int dummy; } ;


 int drm_mm_takedown (int *) ;
 int kfree (struct panfrost_file_priv*) ;
 int panfrost_job_close (struct panfrost_file_priv*) ;
 int panfrost_mmu_pgtable_free (struct panfrost_file_priv*) ;
 int panfrost_perfcnt_close (struct panfrost_file_priv*) ;

__attribute__((used)) static void
panfrost_postclose(struct drm_device *dev, struct drm_file *file)
{
 struct panfrost_file_priv *panfrost_priv = file->driver_priv;

 panfrost_perfcnt_close(panfrost_priv);
 panfrost_job_close(panfrost_priv);

 panfrost_mmu_pgtable_free(panfrost_priv);
 drm_mm_takedown(&panfrost_priv->mm);
 kfree(panfrost_priv);
}
