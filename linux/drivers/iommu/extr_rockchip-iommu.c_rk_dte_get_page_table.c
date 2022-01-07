
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rk_iommu_domain {size_t* dt; scalar_t__ dt_dma; int dt_lock; } ;
typedef int phys_addr_t ;
typedef scalar_t__ dma_addr_t ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 size_t* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int GFP_DMA32 ;
 int NUM_PT_ENTRIES ;
 int SPAGE_SIZE ;
 int assert_spin_locked (int *) ;
 int dev_err (int ,char*) ;
 int dma_dev ;
 scalar_t__ dma_map_single (int ,size_t*,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int) ;
 scalar_t__ phys_to_virt (int ) ;
 scalar_t__ rk_dte_is_pt_valid (size_t) ;
 int rk_dte_pt_address (size_t) ;
 size_t rk_iova_dte_index (scalar_t__) ;
 size_t rk_mk_dte (scalar_t__) ;
 int rk_table_flush (struct rk_iommu_domain*,scalar_t__,int) ;

__attribute__((used)) static u32 *rk_dte_get_page_table(struct rk_iommu_domain *rk_domain,
      dma_addr_t iova)
{
 u32 *page_table, *dte_addr;
 u32 dte_index, dte;
 phys_addr_t pt_phys;
 dma_addr_t pt_dma;

 assert_spin_locked(&rk_domain->dt_lock);

 dte_index = rk_iova_dte_index(iova);
 dte_addr = &rk_domain->dt[dte_index];
 dte = *dte_addr;
 if (rk_dte_is_pt_valid(dte))
  goto done;

 page_table = (u32 *)get_zeroed_page(GFP_ATOMIC | GFP_DMA32);
 if (!page_table)
  return ERR_PTR(-ENOMEM);

 pt_dma = dma_map_single(dma_dev, page_table, SPAGE_SIZE, DMA_TO_DEVICE);
 if (dma_mapping_error(dma_dev, pt_dma)) {
  dev_err(dma_dev, "DMA mapping error while allocating page table\n");
  free_page((unsigned long)page_table);
  return ERR_PTR(-ENOMEM);
 }

 dte = rk_mk_dte(pt_dma);
 *dte_addr = dte;

 rk_table_flush(rk_domain, pt_dma, NUM_PT_ENTRIES);
 rk_table_flush(rk_domain,
         rk_domain->dt_dma + dte_index * sizeof(u32), 1);
done:
 pt_phys = rk_dte_pt_address(dte);
 return (u32 *)phys_to_virt(pt_phys);
}
