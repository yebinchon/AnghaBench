
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sysmmu_pte_t ;
struct TYPE_2__ {unsigned long aperture_end; int force_aperture; scalar_t__ aperture_start; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct exynos_iommu_domain {short* lv2entcnt; struct iommu_domain domain; int * pgtable; int clients; int pgtablelock; int lock; } ;
typedef scalar_t__ dma_addr_t ;


 int BUG_ON (int) ;
 int DMA_TO_DEVICE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int IOMMU_DOMAIN_DMA ;
 unsigned int IOMMU_DOMAIN_UNMANAGED ;
 int LV1TABLE_SIZE ;
 int NUM_LV1ENTRIES ;
 scalar_t__ PG_ENT_SHIFT ;
 int ZERO_LV2LINK ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int) ;
 int dma_dev ;
 scalar_t__ dma_map_single (int ,int *,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int free_pages (unsigned long,int) ;
 scalar_t__ iommu_get_dma_cookie (struct iommu_domain*) ;
 int iommu_put_dma_cookie (struct iommu_domain*) ;
 int kfree (struct exynos_iommu_domain*) ;
 struct exynos_iommu_domain* kzalloc (int,int) ;
 int spin_lock_init (int *) ;
 scalar_t__ virt_to_phys (int *) ;

__attribute__((used)) static struct iommu_domain *exynos_iommu_domain_alloc(unsigned type)
{
 struct exynos_iommu_domain *domain;
 dma_addr_t handle;
 int i;


 BUG_ON(PG_ENT_SHIFT < 0 || !dma_dev);

 domain = kzalloc(sizeof(*domain), GFP_KERNEL);
 if (!domain)
  return ((void*)0);

 if (type == IOMMU_DOMAIN_DMA) {
  if (iommu_get_dma_cookie(&domain->domain) != 0)
   goto err_pgtable;
 } else if (type != IOMMU_DOMAIN_UNMANAGED) {
  goto err_pgtable;
 }

 domain->pgtable = (sysmmu_pte_t *)__get_free_pages(GFP_KERNEL, 2);
 if (!domain->pgtable)
  goto err_dma_cookie;

 domain->lv2entcnt = (short *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 1);
 if (!domain->lv2entcnt)
  goto err_counter;


 for (i = 0; i < NUM_LV1ENTRIES; i++)
  domain->pgtable[i] = ZERO_LV2LINK;

 handle = dma_map_single(dma_dev, domain->pgtable, LV1TABLE_SIZE,
    DMA_TO_DEVICE);

 BUG_ON(handle != virt_to_phys(domain->pgtable));
 if (dma_mapping_error(dma_dev, handle))
  goto err_lv2ent;

 spin_lock_init(&domain->lock);
 spin_lock_init(&domain->pgtablelock);
 INIT_LIST_HEAD(&domain->clients);

 domain->domain.geometry.aperture_start = 0;
 domain->domain.geometry.aperture_end = ~0UL;
 domain->domain.geometry.force_aperture = 1;

 return &domain->domain;

err_lv2ent:
 free_pages((unsigned long)domain->lv2entcnt, 1);
err_counter:
 free_pages((unsigned long)domain->pgtable, 2);
err_dma_cookie:
 if (type == IOMMU_DOMAIN_DMA)
  iommu_put_dma_cookie(&domain->domain);
err_pgtable:
 kfree(domain);
 return ((void*)0);
}
