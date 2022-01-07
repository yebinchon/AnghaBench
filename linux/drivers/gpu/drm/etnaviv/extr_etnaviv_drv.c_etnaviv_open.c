
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_sched_rq* sched_rq; } ;
struct etnaviv_gpu {TYPE_1__ sched; } ;
struct etnaviv_file_private {int * sched_entity; int mmu; } ;
struct etnaviv_drm_private {struct etnaviv_gpu** gpu; int cmdbuf_suballoc; int mmu_global; } ;
struct drm_sched_rq {int dummy; } ;
struct drm_file {struct etnaviv_file_private* driver_priv; } ;
struct drm_device {struct etnaviv_drm_private* dev_private; } ;


 size_t DRM_SCHED_PRIORITY_NORMAL ;
 int ENOMEM ;
 int ETNA_MAX_PIPES ;
 int GFP_KERNEL ;
 int drm_sched_entity_init (int *,struct drm_sched_rq**,int,int *) ;
 int etnaviv_iommu_context_init (int ,int ) ;
 int kfree (struct etnaviv_file_private*) ;
 struct etnaviv_file_private* kzalloc (int,int ) ;

__attribute__((used)) static int etnaviv_open(struct drm_device *dev, struct drm_file *file)
{
 struct etnaviv_drm_private *priv = dev->dev_private;
 struct etnaviv_file_private *ctx;
 int ret, i;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->mmu = etnaviv_iommu_context_init(priv->mmu_global,
           priv->cmdbuf_suballoc);
 if (!ctx->mmu) {
  ret = -ENOMEM;
  goto out_free;
 }

 for (i = 0; i < ETNA_MAX_PIPES; i++) {
  struct etnaviv_gpu *gpu = priv->gpu[i];
  struct drm_sched_rq *rq;

  if (gpu) {
   rq = &gpu->sched.sched_rq[DRM_SCHED_PRIORITY_NORMAL];
   drm_sched_entity_init(&ctx->sched_entity[i],
           &rq, 1, ((void*)0));
   }
 }

 file->driver_priv = ctx;

 return 0;

out_free:
 kfree(ctx);
 return ret;
}
