
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_mmu {int dummy; } ;
struct msm_gpummu {struct msm_mmu base; struct msm_gpu* gpu; int table; int pt_base; } ;
struct msm_gpu {int dummy; } ;
struct device {int dummy; } ;


 int DMA_ATTR_FORCE_CONTIGUOUS ;
 int ENOMEM ;
 struct msm_mmu* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ TABLE_SIZE ;
 int __GFP_ZERO ;
 int dma_alloc_attrs (struct device*,scalar_t__,int *,int,int ) ;
 int funcs ;
 int kfree (struct msm_gpummu*) ;
 struct msm_gpummu* kzalloc (int,int) ;
 int msm_mmu_init (struct msm_mmu*,struct device*,int *) ;

struct msm_mmu *msm_gpummu_new(struct device *dev, struct msm_gpu *gpu)
{
 struct msm_gpummu *gpummu;

 gpummu = kzalloc(sizeof(*gpummu), GFP_KERNEL);
 if (!gpummu)
  return ERR_PTR(-ENOMEM);

 gpummu->table = dma_alloc_attrs(dev, TABLE_SIZE + 32, &gpummu->pt_base,
  GFP_KERNEL | __GFP_ZERO, DMA_ATTR_FORCE_CONTIGUOUS);
 if (!gpummu->table) {
  kfree(gpummu);
  return ERR_PTR(-ENOMEM);
 }

 gpummu->gpu = gpu;
 msm_mmu_init(&gpummu->base, dev, &funcs);

 return &gpummu->base;
}
