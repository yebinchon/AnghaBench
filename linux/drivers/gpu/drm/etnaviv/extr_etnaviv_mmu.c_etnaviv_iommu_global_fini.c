
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pta_dma; scalar_t__ pta_cpu; } ;
struct etnaviv_iommu_global {scalar_t__ use; int lock; int bad_page_dma; scalar_t__ bad_page_cpu; int dev; TYPE_1__ v2; } ;
struct etnaviv_gpu {TYPE_2__* drm; } ;
struct etnaviv_drm_private {struct etnaviv_iommu_global* mmu_global; } ;
struct TYPE_4__ {struct etnaviv_drm_private* dev_private; } ;


 int ETNAVIV_PTA_SIZE ;
 int SZ_4K ;
 int dma_free_wc (int ,int ,scalar_t__,int ) ;
 int kfree (struct etnaviv_iommu_global*) ;
 int mutex_destroy (int *) ;

void etnaviv_iommu_global_fini(struct etnaviv_gpu *gpu)
{
 struct etnaviv_drm_private *priv = gpu->drm->dev_private;
 struct etnaviv_iommu_global *global = priv->mmu_global;

 if (--global->use > 0)
  return;

 if (global->v2.pta_cpu)
  dma_free_wc(global->dev, ETNAVIV_PTA_SIZE,
       global->v2.pta_cpu, global->v2.pta_dma);

 if (global->bad_page_cpu)
  dma_free_wc(global->dev, SZ_4K,
       global->bad_page_cpu, global->bad_page_dma);

 mutex_destroy(&global->lock);
 kfree(global);

 priv->mmu_global = ((void*)0);
}
