
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int force_aperture; int aperture_end; scalar_t__ aperture_start; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct mtk_iommu_domain {struct iommu_domain domain; } ;


 int DMA_BIT_MASK (int) ;
 int GFP_KERNEL ;
 unsigned int IOMMU_DOMAIN_DMA ;
 scalar_t__ iommu_get_dma_cookie (struct iommu_domain*) ;
 int iommu_put_dma_cookie (struct iommu_domain*) ;
 int kfree (struct mtk_iommu_domain*) ;
 struct mtk_iommu_domain* kzalloc (int,int ) ;
 scalar_t__ mtk_iommu_domain_finalise (struct mtk_iommu_domain*) ;

__attribute__((used)) static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
{
 struct mtk_iommu_domain *dom;

 if (type != IOMMU_DOMAIN_DMA)
  return ((void*)0);

 dom = kzalloc(sizeof(*dom), GFP_KERNEL);
 if (!dom)
  return ((void*)0);

 if (iommu_get_dma_cookie(&dom->domain))
  goto free_dom;

 if (mtk_iommu_domain_finalise(dom))
  goto put_dma_cookie;

 dom->domain.geometry.aperture_start = 0;
 dom->domain.geometry.aperture_end = DMA_BIT_MASK(32);
 dom->domain.geometry.force_aperture = 1;

 return &dom->domain;

put_dma_cookie:
 iommu_put_dma_cookie(&dom->domain);
free_dom:
 kfree(dom);
 return ((void*)0);
}
