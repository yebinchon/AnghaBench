
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int force_aperture; int aperture_end; scalar_t__ aperture_start; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct rk_iommu_domain {struct iommu_domain domain; int * dt; int iommus; int dt_lock; int iommus_lock; int dt_dma; } ;


 int DMA_BIT_MASK (int) ;
 int DMA_TO_DEVICE ;
 int GFP_DMA32 ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int IOMMU_DOMAIN_DMA ;
 unsigned int IOMMU_DOMAIN_UNMANAGED ;
 int NUM_DT_ENTRIES ;
 int SPAGE_SIZE ;
 int dev_err (int ,char*) ;
 struct rk_iommu_domain* devm_kzalloc (int ,int,int) ;
 int dma_dev ;
 int dma_map_single (int ,int *,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int) ;
 scalar_t__ iommu_get_dma_cookie (struct iommu_domain*) ;
 int iommu_put_dma_cookie (struct iommu_domain*) ;
 int rk_table_flush (struct rk_iommu_domain*,int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct iommu_domain *rk_iommu_domain_alloc(unsigned type)
{
 struct rk_iommu_domain *rk_domain;

 if (type != IOMMU_DOMAIN_UNMANAGED && type != IOMMU_DOMAIN_DMA)
  return ((void*)0);

 if (!dma_dev)
  return ((void*)0);

 rk_domain = devm_kzalloc(dma_dev, sizeof(*rk_domain), GFP_KERNEL);
 if (!rk_domain)
  return ((void*)0);

 if (type == IOMMU_DOMAIN_DMA &&
     iommu_get_dma_cookie(&rk_domain->domain))
  return ((void*)0);






 rk_domain->dt = (u32 *)get_zeroed_page(GFP_KERNEL | GFP_DMA32);
 if (!rk_domain->dt)
  goto err_put_cookie;

 rk_domain->dt_dma = dma_map_single(dma_dev, rk_domain->dt,
        SPAGE_SIZE, DMA_TO_DEVICE);
 if (dma_mapping_error(dma_dev, rk_domain->dt_dma)) {
  dev_err(dma_dev, "DMA map error for DT\n");
  goto err_free_dt;
 }

 rk_table_flush(rk_domain, rk_domain->dt_dma, NUM_DT_ENTRIES);

 spin_lock_init(&rk_domain->iommus_lock);
 spin_lock_init(&rk_domain->dt_lock);
 INIT_LIST_HEAD(&rk_domain->iommus);

 rk_domain->domain.geometry.aperture_start = 0;
 rk_domain->domain.geometry.aperture_end = DMA_BIT_MASK(32);
 rk_domain->domain.geometry.force_aperture = 1;

 return &rk_domain->domain;

err_free_dt:
 free_page((unsigned long)rk_domain->dt);
err_put_cookie:
 if (type == IOMMU_DOMAIN_DMA)
  iommu_put_dma_cookie(&rk_domain->domain);

 return ((void*)0);
}
