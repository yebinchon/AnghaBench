
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gpu {int dummy; } ;
struct etnaviv_file_private {int mmu; int * sched_entity; } ;
struct etnaviv_drm_private {struct etnaviv_gpu** gpu; } ;
struct drm_file {struct etnaviv_file_private* driver_priv; } ;
struct drm_device {struct etnaviv_drm_private* dev_private; } ;


 unsigned int ETNA_MAX_PIPES ;
 int drm_sched_entity_destroy (int *) ;
 int etnaviv_iommu_context_put (int ) ;
 int kfree (struct etnaviv_file_private*) ;

__attribute__((used)) static void etnaviv_postclose(struct drm_device *dev, struct drm_file *file)
{
 struct etnaviv_drm_private *priv = dev->dev_private;
 struct etnaviv_file_private *ctx = file->driver_priv;
 unsigned int i;

 for (i = 0; i < ETNA_MAX_PIPES; i++) {
  struct etnaviv_gpu *gpu = priv->gpu[i];

  if (gpu)
   drm_sched_entity_destroy(&ctx->sched_entity[i]);
 }

 etnaviv_iommu_context_put(ctx->mmu);

 kfree(ctx);
}
